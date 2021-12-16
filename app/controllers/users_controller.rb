class UsersController < ApplicationController
  def index
    if user_signed_in?
      @code = current_user.code
      @scode = @code.to_s
      @xlsx = Roo::Excelx.new("test-data.xlsx")
      @sheet = @xlsx.sheet(@scode)
      unless current_user.question == nil
        @user = User.find(current_user.id)
        @questions = Question.where(user_id: @user.id).pluck(:q1, :q2, :q3, :q4, :q5, :q6)
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

