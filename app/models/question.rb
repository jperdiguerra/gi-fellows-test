class Question < ApplicationRecord
  has_many :choices

  def correct_answer
    choices.where(correct: true).first
  end
end
