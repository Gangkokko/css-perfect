# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'quizzes/index'
    end
  end
  resources :challenges
  resources :describe_quizzes
  resources :stages
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, { format: 'json' } do
    namespace :v1 do # バージョン1を表している
      resources :categories
      resources :users, only:[:index, :show]
      resources :stages, only:[:index, :show, :create] do
        resources :quizzes, only:[:index]
      end
      resources :describe_quizzes, only:[:index, :show]
      resources :challenges, only:[:create]

      mount_devise_token_auth_for 'User', at: 'auth', controllers: {
        registrations: 'api/v1/auth/registrations'
      }
      namespace :auth do
        resources :sessions, only: %i[index]
      end
    end
  end
end
