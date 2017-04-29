class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
    @services = Item.servicecategories.map { |key, value| [key.humanize, key] }
    @experiences = Item.experiencecategories.map { |key, value| [key.humanize, key] }
    @items = Item.itemcategories.map { |key, value| [key.humanize, key] }
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

  def group
    if(logged_in?)
      @user = User.find_by_id(current_user.id.to_s)
    end
    @favorites = Favorite.all
    @group = params[:group]
    @category = params[:category]
    @items = Item.where(group: @group).
    where(category: @category)
  end

  def groupie
    if(logged_in?)
      @user = User.find_by_id(current_user.id.to_s)
    end
    @favorites = Favorite.all

    @group = params[:group]
    @items = Item.where(group: @group)
  end

  def show
    if(logged_in?)
      @user = User.find_by_id(current_user.id.to_s)
      @offers = Offer.all
      @favorites = Favorite.all
    end

    @item = Item.find_by_id(params[:id])
  end

  def edit
    @item = Item.find_by_id(params[:id])
  end

  def update

    @user = User.find_by_id(current_user.id.to_s)
    @item = Item.find_by_id(params[:id])

   if @item.update(edit_item_params)
     flash[:success] = @item.title + " was updated succesfully."
     redirect_to user_path_url(@user)
   else
     flash[:error] = "There was an error updating your " + @item.group + ". Please try again."
     redirect_to user_path_url(@user)
   end
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
    params.require(:item).permit(:title, :description,:condition,:image,:category, :group)
  end

  def edit_item_params
    params.require(:item).permit(:title, :description,:condition,:image)
  end

  def item_params_group
    params.require(:id)
  end

end
