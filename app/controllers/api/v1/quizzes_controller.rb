class Api::V1::QuizzesController < ApplicationController
  def index
    @stage = Stage.find(params[:stage_id])
    @quizzes = @stage.describe_quizzes
    if params['number']
      pp params
      @quiz = @quizzes[params[:number].to_i]
      render json: { status: 'SUCCESS', data: @quiz }
    else
      render json: { status: 'ERROR', data: "クイズ登録されてないよ" }
    end
  end
end
