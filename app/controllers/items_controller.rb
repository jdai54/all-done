class ItemsController < ApplicationController
  def create
    @user = User.find(current_user.id)
    @item = Item.new( { name: params[:item][:name], user_id: current_user.id } )

    if @item.save
      flash[:success] = "Item was saved."
      redirect_to user_path(@user.id)
    else
      flash[:alert] = "There was an error saving the item. Please try again."
      redirect_to user_path(@user.id)
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @item = Item.find(params[:id])
    
    if @item.destroy
      flash[:notice] = "\"#{@item.name}\" was deleted."
    else
      flash[:now] = "There was an error trying to delete the task. Please try again."
    end
    redirect_to root_path
  end
end
