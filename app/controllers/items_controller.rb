class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to item_path(@item)
    else
      flash[:error] = @item.errors.full_messages.join(", ")
      redirect_to new_item_path
    end
  end

  def show
    @item = Item.find_by_id(params[:id])
  end

  def edit
    @item = Item.find_by_id(params[:id])
  end

  def update
    @item = Item.find_by_id(params[:id])
    @item.update_attributes(item_params)
    redirect_to item_path(@item)
  end

  def destroy
    @item = Item.find_by_id(params[:id])
    @item.destroy
    redirect_to items_path
  end

  private

  def item_params
    params.require(:item).permit(:title, :description)
  end

end
