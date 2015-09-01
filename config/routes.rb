Rails.application.routes.draw do
  get 'lessons/index'

  get 'lessons/new'

  resources :lessons

  root "lessons#index"
end
