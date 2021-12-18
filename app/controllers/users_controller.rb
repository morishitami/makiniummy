class UsersController < ApplicationController
  def index
    if user_signed_in?
      @code = current_user.code
      @scode = @code.to_s
      @xlsx = Roo::Excelx.new("test-data.xlsx")
      begin
        @sheet = @xlsx.sheet(@scode)
      rescue
        @sheet = "none"
      end
      unless current_user.question == nil
        @user = User.find(current_user.id)
        @questions = Question.where(user_id: @user.id).pluck(:q1, :q2, :q3, :q4, :q5, :q6, :q7, :q8, :q9, :q10, :q11, :q12, :q13, :q14, :q15, :q16, :q17, :q18, :q19, :q20, :q21, :q22, :q23, :q24, :q25, :q26, :q27, :q28, :q29, :q30, :q31, :q32, :q33)
      end
      unless current_user.actor == nil
        @user = User.find(current_user.id)
        @actor = Actor.where(user_id: @user.id).pluck(:id)
      end
    end


  end

  def show
    @code = current_user.code
    @stage_name = current_user.stage_name
    @name = current_user.name
    @scode = @code.to_s
    @xlsx = Roo::Excelx.new("test-data.xlsx")
    @sheet = @xlsx.sheet(@scode)
    @last =@sheet.last_row - 4
  end
end

