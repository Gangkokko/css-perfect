# frozen_string_literal: true

module Api
  module V1
    class CategoriesController < ApplicationController
      skip_before_action :verify_authenticity_token
      def index
        @categories = Category.all
        # render json: { message: @categories }
      end

      def create
        # curl -X POST -H "Content-Type: application/json" -d '{"category": {"content": "TESTTITLE"}}' http://localhost:3001/api/v1/categories
        category = Category.new(category_params)
        pp params
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
  end
end
