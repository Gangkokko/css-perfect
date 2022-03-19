class Api::V1::CategoriesController < ApplicationController
  def index
    @categories = Category.all
    render json: { status: 200, message: @categories}
  end
end
