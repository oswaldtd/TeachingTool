Rails.application.routes.draw do
  devise_for :users
  get 'lessons/index'

  get 'lessons/new'

  resources :lessons

  root "lessons#index"
end
