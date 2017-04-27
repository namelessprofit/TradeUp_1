class FavoritesController < ApplicationController
    def index
      @favorites = Favorites.all
    end

    def new
      @favorite = Favorite.new
    end

    def create
      favorite = Favorite.new(favorite_params)

      if favorite.save
        redirect_to favorite_path(favorite)
      else
        flash[:error] = favorite.errors.full_messages.join(", ")
        redirect_to new_favorite_path
      end
    end

    def show
      favorite_id = params[:id]

      @favorite = Favorite.find_by_id(favorite_id)

    end

    def edit
      favorite_id = params[:id]

      @favorite = Favorite.find_by_id(favorite_id)

    end

    def update
      favorite_id = params[:id]

      favorite = Favorite.find_by_id(favorite_id)

      favorite.update_attributes(favorite_params)

      redirect_to favorite_path(favorite)
    end

    def destroy
      favorite_id = params[:id]

      favorite = Favorite.find_by_id(favorite_id)

      favorite.destroy

      redirect_to favorite_path
    end

    private

    def favorite_params
      params.require(:favorite).permit(:name, :description)
    end

  end

end
