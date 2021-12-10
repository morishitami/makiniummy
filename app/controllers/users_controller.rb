class UsersController < ApplicationController
  def show
    @code = current_user.code
    @name = current_user.name
  end
end
