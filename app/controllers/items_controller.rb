class ItemsController < ApplicationController
  before_action :authenticate_user!
  
  def create
    @user = current_user
    @item = Item.new(item_params)
    @item.user = current_user
  end
  
  private
  
  def item_params
    params.require(:item).permit(:name)
  end
  
end
