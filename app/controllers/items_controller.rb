class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    if (logged_in?)
      render :new
      @item = Item.new
    else
      flash[:error] = 'Please sign in to post an item for trade.'
      redirect_to signup_path
    end
  end


  def create
    @user = User.find_by_id(current_user.id.to_s)
    @item = Item.new()
    @item.title = item_params[:title]
    @item.description = item_params[:description]
    @item.condition = item_params[:condition].to_i
    @item.image = item_params[:image]
    @item.group = item_params[:group].to_i
    if (item_params[:servicecategory].to_i >= 0)
      @item.servicecategory = item_params[:servicecategory].to_i
    elsif (item_params[:experiencecategory].to_i >= 0)
      @item.experiencecategory = item_params[:experiencecategory].to_i
    elsif (item_params[:itemcategory].to_i >= 0)
      @item.itemcategory = item_params[:itemcategory].to_i
    end
    @item.user = @user
    if @item.save
      redirect_to user_path_url(@user)
    else
      flash[:error] = @item.errors.full_messages.join(", ")
      redirect_to new_item_path_url
    end
  end

def category
  if(logged_in?)
    @user = User.find_by_id(current_user.id.to_s)
  end
  @favorites = Favorite.all
  @category = params[:category]
  @group = params[:group]
  if (@group == 'service')
    @servicecategory = params[:category]
    @items = Item.where(group: @group).where(servicecategory: @servicecategory)
  elsif (@group == 'experience')
    @expcategory = params[:category]
    @items = Item.where(group: @group).where(experiencecategory: @expcategory)
  elsif (@group == 'item')
    @itemcategory = params[:category]
    @items = Item.where(group: @group).where(itemcategory: @itemcategory)
  end
end


  def group
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
      @currUser = User.find(current_user.id.to_s)
    end
    @item = Item.find_by_id(params[:id])
    @category = @item.experiencecategory || @item.servicecategory || @item.itemcategory
    if(@item.experiencecategory)
    @relatedItems = Item.where(experiencecategory: @category)
  elsif(@item.servicecategory)
    @relatedItems = Item.where(servicecategory: @category)
  elsif(@item.itemcategory)
    @relatedItems = Item.where(itemcategory: @category)
   end
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
     flash[:error] = "There was an error updating your " + @item.title + ". Please try again."

     redirect_to user_path_url(@user)
   end
  end

  def destroy
    @user = User.find_by_id(current_user.id.to_s)
    @item = Item.find_by_id(params[:id])
    # @offer = Offer.where(requested_item_id: )
    @item.destroy
    redirect_to user_path_url(@user)
    flash[:success]=@item.title + " was deleted"
  end

  private

  def item_params
    params.require(:item).permit(:title, :description,:condition,:image,:experiencecategory, :servicecategory, :itemcategory, :group)
  end

  def edit_item_params
    params.require(:item).permit(:title, :description,:condition,:image)
  end

  def item_params_group
    params.require(:id)
  end

end
