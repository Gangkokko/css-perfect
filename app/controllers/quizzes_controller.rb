class QuizzesController < ApplicationController
  def index
    @stage = Stage.find(stage_id)
    @quizzes = @stage.describe_quizzes
    if params[:number] ==1
      @quiz = @quizzes.first
      render json: { status: 'SUCCESS', data: @quiz }
    end
  end

  def show
  end
end
