class QuestionsController < ApplicationController
  def show    
    @questions = Question.new
  end
end
