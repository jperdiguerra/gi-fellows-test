class PretestController < ApplicationController
  def index
    @questions = Question.all
  end

  def check_answers
    correct = 0
    Question.where(id: params.keys).each do |question|
      correct_answer = question.correct_answer.try(:id)
      if correct_answer && correct_answer == params[question.id.to_s].to_i
        correct += 1
      end
    end
    current_user.update_attributes(pretest_score: correct)
    redirect_to '/pretest/result'
  end

  def result
  end
end
