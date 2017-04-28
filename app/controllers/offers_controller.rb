class OffersController < ApplicationController

    def index
      @user = current_user.id.to_s
      @offers = Offer.where(initiator_id: @user).where(receiver_id: @user)
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

    private
    def offer_params
      params.permit(:requested_item_id, :offered_item_id, :receiver_id, :initiator_id)
    end
    def create_offer_params
      params.require(:item_id)
    end
end
