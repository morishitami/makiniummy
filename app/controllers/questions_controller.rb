class QuestionsController < ApplicationController
  def new
    @question = Question.find_or_initialize_by(user_id: current_user.id)
  end

  def create
    @question = Question.create!(question_params)
    redirect_to edit_user_question_path(@question.user, @question)
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    @question.update(question_params)
    redirect_to edit_user_question_path(@question.user, @question)
  end


  private

  def question_params
    params.require(:question).permit(:q1, :q2, :q3, :q4, :q5, :q6, :q7, :q8, :q9, :q10, :q11, :q12, :q13, :q14, :q15, :q16, :q17, :q18, :q19, :q20, :q21, :q22, :q23, :q24, :q25, :q26, :q27, :q28, :q29, :q30, :q31, :q32, :q33).merge(user_id: current_user.id)
  end

end