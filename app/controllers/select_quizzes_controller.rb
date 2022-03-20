class SelectQuizzesController < ApplicationController
  before_action :set_select_quiz, only: %i[ show edit update destroy ]

  # GET /select_quizzes or /select_quizzes.json
  def index
    @select_quizzes = SelectQuiz.all
  end

  # GET /select_quizzes/1 or /select_quizzes/1.json
  def show
  end

  # GET /select_quizzes/new
  def new
    @select_quiz = SelectQuiz.new
  end

  # GET /select_quizzes/1/edit
  def edit
  end

  # POST /select_quizzes or /select_quizzes.json
  def create
    @select_quiz = SelectQuiz.new(select_quiz_params)

    respond_to do |format|
      if @select_quiz.save
        format.html { redirect_to select_quiz_url(@select_quiz), notice: "Select quiz was successfully created." }
        format.json { render :show, status: :created, location: @select_quiz }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @select_quiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /select_quizzes/1 or /select_quizzes/1.json
  def update
    respond_to do |format|
      if @select_quiz.update(select_quiz_params)
        format.html { redirect_to select_quiz_url(@select_quiz), notice: "Select quiz was successfully updated." }
        format.json { render :show, status: :ok, location: @select_quiz }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @select_quiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /select_quizzes/1 or /select_quizzes/1.json
  def destroy
    @select_quiz.destroy

    respond_to do |format|
      format.html { redirect_to select_quizzes_url, notice: "Select quiz was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_select_quiz
      @select_quiz = SelectQuiz.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def select_quiz_params
      params.require(:select_quiz).permit(:stage_id, :content, :image, :first_choice, :second_choice, :third_choice, :forth_choice, :answer_number)
    end
end
