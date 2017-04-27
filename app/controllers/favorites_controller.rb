class FavoritesController < ApplicationController

    def index
      @favorites = Favorite.all
    end

    def create
      @favorite = Favorite.new(favorite_params)
      if @favorite.save
        redirect_to favorite_path(favorite)
      else
        flash[:error] = @favorite.errors.full_messages.join(", ")
        redirect_to new_favorite_path
      end
    end

    def destroy
      @favorite = Favorite.find_by_id(params[:id])
      @favorite.destroy
      redirect_to favorite_path
    end

end
