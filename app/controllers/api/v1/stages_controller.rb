# frozen_string_literal: true

module Api
  module V1
    class StagesController < ApplicationController
      def index
        @stages = Stage.all
      end

      def create
        @stage = Stage.new(stage_params)
        if @stage.save
          render json: { status: 'SUCCESS', data: @stage }
        else
          render json: { status: 'ERROR', data: @stage.errors }
        end
      end

      def show
        @stage = Stage.find(params[:id])
      end

      private

      def stage_params
        params.require(:stage).permit(:user_id, :name, :description, :image, :is_public)
      end
    end
  end
end
