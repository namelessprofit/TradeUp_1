  class SessionsController < ApplicationController

    def new
    end

    def create
      @user = User.find_by(email: params[:session][:email])
      if @user && @user.authenticate(params[:session][:password])
        session[:user_id] = @user.id
        flash[:success]= "Welcome!"
        redirect_to user_path_url(@user)
      else
        flash[:error]= "An error has occurred. Please try again."
        render 'new'
      end
    end

    def destroy
      session.delete(:user_id)
      flash[:success] = "You have logged out"
      redirect_to '/'
    end

  end
