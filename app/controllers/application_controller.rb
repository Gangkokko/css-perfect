# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include DeviseTokenAuth::Concerns::SetUserByToken

  # protect_from_forgery with: :exception
  # protect_from_forgery
  helper_method :current_user, :user_signed_in?
end
