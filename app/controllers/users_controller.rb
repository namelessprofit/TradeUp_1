class UsersController < ApplicationController

    def new
      @user = User.new()
    end

    def create
      @user = User.new(user_params_create)
      if @user.save
        flash[:success] = "Welcome!"
        redirect_to '/'
        session[:user_id] = @user.id
      else
        flash[:error] = @user.errors.full_messages
        render 'new'
      end
    end

    def show
      @offers = Offer.all
      if (current_user)
        @currUser = User.find_by_id(current_user.id.to_s)
      end
      @user = User.find_by_id(params[:id])
      @items = @user.items
    end

    def edit
      @user = User.find_by_id(params[:id])
    end

    def update
      @user = User.find_by_id(params[:id])
       if (@user.update(user_params_edit))
        redirect_to user_path_url(@user)
      else
        flash[:error] = @user.errors.full_messages
        redirect_to edit_user_path_url(@user)
    end
  end

  def updateRating
    @user = User.find_by_id(params[:id])
    if(@user.rating)
    @user.rating += user_params_update[:rating].to_i
    @user.rating_count += 1
    @user.save
  else
    @user.rating = 0
    @user.rating += user_params_update[:rating].to_i
    @user.rating_count = 0
    @user.rating_count += 1
    @user.save
  end
    cookies[:rated] = '.' if cookies[:rated].nil?
    cookies[:rated] += @user.id.to_s + '.'
    redirect_to :back
  end

    def destroy
      @user = User.find_by_id(params[:id])
      @user.destroy
      redirect_to root_path
    end

    private
    def user_params_create
      params.require(:user).permit(:location,:username,:email,:password,:password_confirmation)
    end

    def user_params_edit
      params.require(:user).permit(:location, :image, :background_color, :email, :username, :rating)
    end

    def user_params_update
      params.require(:user).permit(:rating)
    end
end
