class Api::V1::QuizzesController < ApplicationController
  def index
    @stage = Stage.find(params[:stage_id])
    @quizzes_d = @stage.describe_quizzes
    @quizzes_s = @stage.select_quizzes
    @quizzes = @quizzes_d + @quizzes_s
    pp @quizzes
    if params['number']
      @quiz = @quizzes[params[:number].to_i]
      render json: { status: 'SUCCESS', data: @quiz }
    end
  end
end
