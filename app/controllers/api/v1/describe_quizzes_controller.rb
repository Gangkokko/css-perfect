# frozen_string_literal: true

module Api
  module V1
    class DescribeQuizzesController < ApplicationController
      def index
        @describe_quizzes = DescribeQuiz.all
      end

      def show
        @quiz = DescribeQuiz.find(params[:id])
      end
    end
  end
end
