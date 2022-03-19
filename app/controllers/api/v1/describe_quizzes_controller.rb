class Api::V1::DescribeQuizzesController < ApplicationController
  def index
    @describe_quizzes = DescribeQuiz.all
  end

  def show
  end
end
