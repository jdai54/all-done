class ItemsController < ApplicationController
  def create
    @user = User.find(current_user.id)
    @item = Item.new( { name: params[:item][:name], user_id: current_user.id } )

    @item.save
    redirect_to user_path(@user.id)
  end

  def destroy
    @user = User.find(params[:user_id])
    @item = Item.find(params[:id])
    @item.destroy

    respond_to do |format|
      format.html
      format.js
    end
  end
end
