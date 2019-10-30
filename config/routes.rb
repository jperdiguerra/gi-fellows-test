Rails.application.routes.draw do
  devise_for :users
  root to: 'pretest#index'
  resources :questions
  resources :ideas
  # resources :pretest
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'pages/info'
  get 'pages/video'

  get 'pretest', to: 'pretest#index'
  post 'pretest', to: 'pretest#check_answers'
  get 'pretest/result', to: 'pretest#result'

  get 'posttest', to: 'posttest#index'
  post 'posttest', to: 'posttest#check_answers'
  get 'posttest/result', to: 'posttest#result'
end
