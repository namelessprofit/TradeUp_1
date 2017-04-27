class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @user = User.find_by_id(current_user.id.to_s)
    @item.user = @user
    if @item.save
      redirect_to user_path_url(@user)
    else
      flash[:error] = @item.errors.full_messages.join(", ")
      redirect_to new_item_path_url
    end
  end

  def show
    @item = Item.find_by_id(params[:id])
  end

  def edit
    @item = Item.find_by_id(params[:id])
  end

  def update
    @user = User.find_by_id(current_user.id.to_s)
    @item = Item.find_by_id(params[:id])
    @item.update_attributes(item_params)
    redirect_to user_path_url(@user)
    flash[:success]=@item.title + " was updated"
  end

  def destroy
    @user = User.find_by_id(current_user.id.to_s)
    @item = Item.find_by_id(params[:id])
    @item.destroy
    redirect_to user_path_url(@user)
    flash[:success]=@item.title + " was deleted"
  end

  private

  def item_params
    params.require(:item).permit(:title, :description,:condition,:image,:category)
  end

end
