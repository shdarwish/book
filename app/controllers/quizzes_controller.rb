class QuizzesController < ApplicationController
  before_action :set_quiz, only: [:show, :edit, :update, :destroy]

  # GET /quizzes
  def index
    @quizzes = Quiz.all
  end

  # GET /quizzes/1
  def show
  end

  # GET /quizzes/new
  def new
    @quiz = Quiz.new
  end

  # GET /quizzes/1/edit
  def edit
  end

  # POST /quizzes
  def create
    @quiz = Quiz.new(quiz_params)
    result = getresult(@quiz.q1, @quiz.q2, @quiz.q3, @quiz.q4, @quiz.q5, @quiz.q6, @quiz.q7)
    @quiz.result = result
    if @quiz.save
      # Returns true if the user is logged in, false otherwise.
      if !current_user.nil?
        genre = Genre.find_by name: result
        Usergenre.create(user_id: current_user.id, genre_id: genre.id)
        redirect_to edit_user_path(current_user), notice: 'Quiz result has been added'
      else 
        session[:answer] = result
        redirect_to @quiz
      end
    else
      render :new
    end
  end

  # PATCH/PUT /quizzes/1
  def update
    if @quiz.update(quiz_params)
      @quiz.update_attribute(:result, getresult(@quiz.q1, @quiz.q2, @quiz.q3, @quiz.q4, @quiz.q5, @quiz.q6, @quiz.q7))
      redirect_to @quiz, notice: 'Quiz was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /quizzes/1
  def destroy
    @quiz.destroy
    redirect_to quizzes_url, notice: 'Quiz was successfully destroyed.'
  end


  private
    def getresult(q1, q2, q3, q4, q5, q6, q7)
      result = Quiz.get_result(q1, q2, q3, q4, q5, q6, q7)
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_quiz
      @quiz = Quiz.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def quiz_params
      params.require(:quiz).permit(:q1, :q2, :q3, :q4, :q5, :q6, :q7)
    end
end
