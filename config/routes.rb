Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index] do
    collection do
      get :following_user
    end
  end
  resources :topics, only: [:index, :new, :create] do
    member do
      get :user_topic_follow
    end
  end
  root to: "questions#index"
  resources :questions, only: [:index, :new, :create, :show ] do
    collection do
      get :user_questions
    end
  end
  resources :answers, only: [:create] do
    collection do
      get :user_answers
    end
  end
end
