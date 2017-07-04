class UsersController < ApplicationController
  def Show
    @user = User.find(params[:id])
  end
end
