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
  
  def destroy
    @item = current_user.items.find(params[:id])
    
    if @item.destroy
      flash[:notice] = "\"#{@item.name}\" has been completed."
      redirect_to root_path
    else
      flash.now[:alert] = "There was an error completing this item."
      redirect_to root_path
    end
    
  end
  
  private
  
  def item_params
    params.require(:item).permit(:name)
  end
  
end
