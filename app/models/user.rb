class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  serialize :posttest_answers
  serialize :posttest2_answers
  serialize :posttest3_answers

  PROGRESS = {
    consent: 1,
    survey: 2,
    pretest: 3,
    pretest_result: 4,
    video: 5,
    posttest: 6,
    posttest_result: 7,
    posttest2: 8,
    posttest2_result: 9,
    posttest3: 10,
    posttest3_result: 11
  }.freeze
end
