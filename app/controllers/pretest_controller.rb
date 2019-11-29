class PretestController < ApplicationController
  def index
    if current_user.progress != User::PROGRESS[:pretest]
      redirect_to PAGES[current_user.progress.to_s]
      return
    end
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
    current_user.update_attributes(pretest_score: correct, progress: User::PROGRESS[:pretest_result])
    redirect_to '/pretest/result'
  end

  def result
    redirect_to PAGES[current_user.progress.to_s] if current_user.progress != User::PROGRESS[:pretest_result]
  end
end
