# frozen_string_literal: true

module Api
  module V1
    class UsersController < ApplicationController
      def index
        @users = User.all
        # render json: { status: 'SUCCESS',data: @categories }
      end

      def show
        @user = User.find_by(id: params[:id])
        render json: { status: 'ERROR', data: 'そんなやつはいない' } if @user.nil?
      end
    end
  end
end
