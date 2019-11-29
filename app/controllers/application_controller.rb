class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  PAGES = {
    '1' => '/pages/info',
    '2' => '/pages/survey',
    '3' => '/pretest',
    '4' => '/pretest/result',
    '5' => '/pages/video',
    '6' => '/posttest',
    '7' => '/posttest/result'
  }.freeze
end
