class OffersController < ApplicationController

    def index
      @user = current_user.id
      puts "WERE IN INDEX!"
      @offers = Offer.where(:initiator_id => @user)
    end

    def incoming
      @user = current_user.id
      puts "WERE IN INCOMING!"
      @offers = Offer.where(:receiver_id => @user)
    end

    def new
      puts "WERE IN NEW"
      puts params[:item_id.to_s]
      @item = Item.find_by_id(params[:item_id.to_s])
      @user = User.find_by_id(current_user.id.to_s)
      @offer = Offer.new
      @items = Item.where(user: @user)
    end

    def show
      @offer = Offer.find_by_id(params[:id])
    end

    def create
      @user = User.find_by_id(current_user.id.to_s)
      @offer = Offer.new(offer_params)
      @offer.is_accepted = false
      @offer.is_completed = false
      if @offer.save
        redirect_to user_path_url(@user)
      else
        flash[:error] = @offer.errors.full_messages.join(", ")
        redirect_to user_path_url(@user)
      end
    end

    def update
      @user = User.find_by_id(current_user.id.to_s)
      @offer = Offer.find_by_id(params[:id])
      puts "WERE IN UPDATE"
      puts params[:is_accepted]
      @offer.is_accepted = params[:is_accepted]
      @offer.is_completed = params[:is_completed]
          if (params[:is_accepted] == 'true')
            @theirItem = Item.find_by_id(@offer.offered_item_id.to_s)
            @myItem = Item.find_by_id(@offer.requested_item_id.to_s)
            @temp = @theirItem.user
            @theirItem.user = @myItem.user
            @myItem.user = @temp
            @myItem.save
            @theirItem.save
            @offer.save
            flash[:success] = "Trade success,checkout your new item"
            redirect_to user_path_url(@user)
          else
            @offer.save
            flash[:success] = "Trade rejected,browse more"
            redirect_to user_path_url(@user)
          end
      end


    private
    def offer_params
      params.permit(:requested_item_id, :offered_item_id, :receiver_id, :initiator_id)
    end

    def create_offer_params
      params.require(:item_id)
    end

    def update_offer_params
      params.permit(:is_accepted, :is_completed)
    end
end
