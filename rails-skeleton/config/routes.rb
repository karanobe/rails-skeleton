Rails.application.routes.draw do

  resources :questions do
    resources :answers
    resources :comments
  end

  resources :answers, only: [:index] do
    resources :comments
  end

  root "questions#index"
end
