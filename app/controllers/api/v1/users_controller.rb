class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    # render json: { status: 'SUCCESS',data: @categories }
  end

  def show
    @user = User.find_by(id: params[:id])
    if @user.nil?
      render json: { status: 'ERROR', data: "そんなやつはいない" }
    end
  end
end
