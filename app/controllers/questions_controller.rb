class QuestionsController < ApplicationController
  def show    
    @questions = Question.new
  end

  def create
    @question = Question.create(question_params)
    redirect_to question_path(@question.actor)
  end
end
