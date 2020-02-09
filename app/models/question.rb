class Question < ApplicationRecord
  has_many :choices

  scope :default, -> { where(version: 0) }
  scope :posttest3, -> { where(version: 1) }

  def correct_answer
    choices.where(correct: true).first
  end
end
