class FavoritesController < ApplicationController

    def index
      @favorites = Favorite.all
    end

    def create
      @favorite = Favorite.new()
      @found = Item.find_by_id(params[:item_id])
      @user = User.find_by_id(current_user.id.to_s)
      @favorite.user = @user
      @favorite.item = @found
      if @favorite.save
            redirect_to :back
      else
        flash[:error] = @favorite.errors.full_messages.join(", ")
        redirect_to new_favorite_path
      end
    end

    def destroy
      @user = User.find_by_id(current_user.id.to_s)
      @found = Item.find_by_id(params[:item_id])
      @favorite = Favorite.where(:user => @user).where(:item => @found)
      @favorite[0].destroy
      redirect_to :back
    end

    private

    def favorite_params
      params.require(:item_id)
    end
    def favorite_params_delete
      params.require(:favorite_id)
    end
end
