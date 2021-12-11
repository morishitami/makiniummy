class ActorsController < ApplicationController
  def index
    if user_signed_in?
      @code = current_user.code
      @scode = @code.to_s
      @xlsx = Roo::Excelx.new("test-data.xlsx")
      @sheet = @xlsx.sheet(@scode)
    end
  end
end
