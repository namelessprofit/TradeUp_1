class PagesController < ApplicationController
  def home
    if session[:user_id]
      @user = User.find(session[:user_id])
    else
      @user = nil
    end
    @items = Item.all
    @itemcount = Item.count
  end

  def learnmore
    if session[:user_id]
      @user = User.find(session[:user_id])
    else
      @user = nil
    end
  end

end
