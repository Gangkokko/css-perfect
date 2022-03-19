# frozen_string_literal: true

class DescribeQuizzesController < ApplicationController
  before_action :set_describe_quiz, only: %i[show edit update destroy]

  # GET /describe_quizzes or /describe_quizzes.json
  def index
    @describe_quizzes = DescribeQuiz.all
  end

  # GET /describe_quizzes/1 or /describe_quizzes/1.json
  def show; end

  # GET /describe_quizzes/new
  def new
    @describe_quiz = DescribeQuiz.new
  end

  # GET /describe_quizzes/1/edit
  def edit; end

  # POST /describe_quizzes or /describe_quizzes.json
  def create
    @describe_quiz = DescribeQuiz.new(describe_quiz_params)

    respond_to do |format|
      if @describe_quiz.save
        format.html { redirect_to describe_quiz_url(@describe_quiz), notice: 'Describe quiz was successfully created.' }
        format.json { render :show, status: :created, location: @describe_quiz }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @describe_quiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /describe_quizzes/1 or /describe_quizzes/1.json
  def update
    respond_to do |format|
      if @describe_quiz.update(describe_quiz_params)
        format.html { redirect_to describe_quiz_url(@describe_quiz), notice: 'Describe quiz was successfully updated.' }
        format.json { render :show, status: :ok, location: @describe_quiz }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @describe_quiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /describe_quizzes/1 or /describe_quizzes/1.json
  def destroy
    @describe_quiz.destroy

    respond_to do |format|
      format.html { redirect_to describe_quizzes_url, notice: 'Describe quiz was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_describe_quiz
    @describe_quiz = DescribeQuiz.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def describe_quiz_params
    params.require(:describe_quiz).permit(:stage_id, :image, :content)
  end
end
