class Api::V1::DescribeQuizzesController < ApplicationController
  def index
    @describe_quizzes = DescribeQuiz.all
  end

  def show
    @quiz = DescribeQuiz.find(params[:id])
  end
end
