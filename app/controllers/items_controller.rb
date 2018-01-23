class ItemsController < ApplicationController
  before_action :authenticate_user!
  
  def create
    @user = current_user
    @item = @user.items.new(item_params)
    @item.user = current_user
    
    if @item.save
      flash[:notice] = "Item saved successfully."
      redirect_to [@user]
    else
      flash[:error] = "Item did not save. Please try again."
      redirect_to [@user]
    end
  end
  
  private
  
  def item_params
    params.require(:item).permit(:name)
  end
  
end
