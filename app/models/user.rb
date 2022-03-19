# frozen_string_literal: true

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
   devise :database_authenticatable,
   :registerable,
  #  :recoverable,
   :rememberable,
  #  :trackable,
   :validatable,
  #  :omniauthable # ←こいつ
  # devise  :rememberable, :omniauthable, omniauth_providers: %i[google_oauth2], :confirmable, :lockable, :timeoutable, :trackable,
  include DeviseTokenAuth::Concerns::User
end
