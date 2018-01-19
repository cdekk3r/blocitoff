class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def show
    @user = current_user
    @item = Item.find(params[:id])
    @item.user = current_user
  end
  
end