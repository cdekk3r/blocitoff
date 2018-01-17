class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def show
    @user = User.find(params[:_id])
  end
end
