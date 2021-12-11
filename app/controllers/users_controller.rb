class UsersController < ApplicationController
  
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

