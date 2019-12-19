class Posttest2Controller < ApplicationController
  def index
    if current_user.progress == User::PROGRESS[:posttest_result]
      current_user.update_attribute(:progress, User::PROGRESS[:posttest2])
    elsif current_user.progress != User::PROGRESS[:posttest2]
      redirect_to PAGES[current_user.progress.to_s]
      return
    end
    @questions = Question.all.order('random()')
  end

  def check_answers
    correct = 0
    answers = {}
    Question.where(id: params.keys).each do |question|
      correct_answer = question.correct_answer.try(:id)
      answer = params[question.id.to_s].try(:to_i) || 0
      if correct_answer && correct_answer == answer
        correct += 1
      end
      answers[question.id] = answer
    end
    current_user.update_attributes(posttest2_score: correct, posttest2_answers: answers, progress: User::PROGRESS[:posttest2_result])
    redirect_to '/posttest2/result'
  end

  def result
    if current_user.progress != User::PROGRESS[:posttest2_result]
      redirect_to PAGES[current_user.progress.to_s]
      return
    end
    @questions = Question.all
    @choices_text = { 0 => '' }
    Choice.all.each { |choice| @choices_text[choice.id] = choice.text }
  end
end
