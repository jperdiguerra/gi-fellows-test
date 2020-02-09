class Posttest3Controller < ApplicationController
  def index
    if current_user.progress != User::PROGRESS[:posttest3]
      redirect_to PAGES[current_user.progress.to_s]
      return
    end
    @questions = Question.posttest3
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
    current_user.update_attributes(posttest3_score: correct, posttest3_answers: answers, progress: User::PROGRESS[:posttest3_result])
    redirect_to '/posttest3/result'
  end

  def result
    if current_user.progress != User::PROGRESS[:posttest3_result]
      redirect_to PAGES[current_user.progress.to_s]
      return
    end
    @questions = Question.posttest3
    @choices_text = { 0 => '' }
    Choice.all.each { |choice| @choices_text[choice.id] = choice.text }
  end
end
