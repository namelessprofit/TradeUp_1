class UsersController < ApplicationController

    def new
      @user = User.new()
    end

    def create
      @user = User.new(user_params_create)
      puts @user
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
      @user = User.find_by_id(params[:id])
      @items = @user.items
    end

    def edit
      @user = User.find_by_id(params[:id])
    end

    def update
      @user = User.find_by_id(params[:id])
      puts "USER PARAMS"
      puts user_params_edit[:location]
      puts @user.location
       if (@user.update(user_params_edit))
        flash[:success] = "Profile Updated"
        redirect_to user_path_url(@user)
      else
        flash[:error] = @user.errors.full_messages
        redirect_to edit_user_path_url(@user)

    end
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
      params.require(:user).permit(:location, :image, :background_color, :email, :username)
    end
end
