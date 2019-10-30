class PosttestController < ApplicationController
  def index
    @questions = Question.all
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
    current_user.update_attributes(posttest_score: correct, posttest_answers: answers)
    redirect_to '/posttest/result'
  end

  def result
    @questions = Question.all
    @choices_text = { 0 => '' }
    Choice.all.each { |choice| @choices_text[choice.id] = choice.text }
  end
end
