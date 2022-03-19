# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, { format: 'json' } do
    namespace :v1 do # バージョン1を表している
      resources :categories
      # mount_devise_token_auth_for 'User', at: 'auth'
      mount_devise_token_auth_for 'User', at: 'auth', controllers: {
        omniauth_callbacks: 'api/v1/auth/omniauth_callbacks'
      }
    end
  end
end
