class Api::V1::CategoriesController < ApplicationController
  def index
    @categories = Category.all
    render json: { status: 200, message: @categories}
  end

  def create
    category = Category.new(category_params)
    if category.save
      render json: { status: 'SUCCESS', data: category }
    else
      render json: { status: 'ERROR', data: category.errors }
    end
  end

  private
  def category_params
    params.require(:category).permit(:content)
  end
end
