class PagesController < ApplicationController
  def home
    if session[:user_id]
      @user = User.find(session[:user_id])
    else
      @user = nil
    end
    @services = Item.where(:group => 1)
    @servicescount = @services.count
    @experiences = Item.where(:group => 2)
    @experiencescount = @experiences.count
    @items = Item.where(:group => 3)
    @itemscount = @items.count
  end

  def learnmore

  end

end
