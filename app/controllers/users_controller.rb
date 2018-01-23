class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def show
    @user = current_user
    @items = @user.items(current_user)
  end
  
end