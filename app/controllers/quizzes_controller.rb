class QuizzesController < ApplicationController
  def index
    @stage = Stage.find(stage_id)
    @quizzes_d = @stage.describe_quizzes
    @quizzes_s = @stage.select_quizzes
    @quizzes = @quizzes_d + @quizzes_s
    if params[:number] ==1
      @quiz = @quizzes.first
      render json: { status: 'SUCCESS', data: @quiz }
    end
  end

  def show
  end
end
