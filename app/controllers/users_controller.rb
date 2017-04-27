class UsersController < ApplicationController

    def new
      @user = User.new()
    end

    def create
      @user = User.new(user_params)
      puts"HEYYYYY"
      puts @user
      if @user.save
        flash[:success] = "Welcome!"
        redirect_to '/'
        session[:user_id] = @user.id
      else
        flash[:error] = "Error!"
        render 'new'
      end
    end

    def show
      @user = User.find_by_id(params[:id])
    end

    def edit
      @user = User.find_by_id(params[:id])
    end

    def update
      @user = User.find_by_id(params[:id])
      @user.update_attributes(user_params)
      redirect_to user_path(@user)
    end

    def destroy
      @user = User.find_by_id(params[:id])
      @user.destroy
      redirect_to root_path
    end

    private
    def user_params
      params.require(:user).permit(:email,:password, :username, :password_confirmation, :location)
    end

end
