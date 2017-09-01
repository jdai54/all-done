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
end
