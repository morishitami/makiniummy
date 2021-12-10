class UsersController < ApplicationController
  def show
    @code = current_user.code
    @name = current_user.name
    @xlsx = Roo::Excelx.new("test-data.xlsx")
    @sheet = @xlsx.sheet('101')
  end
end
