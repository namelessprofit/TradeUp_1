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

    def history
      @user = current_user.id
      puts "WERE IN INCOMING!"
      @recOffers = Offer.where(:receiver_id => @user).where(:is_completed => true)
      @sentOffers = Offer.where(:initiator_id => @user).where(:is_completed => true)
    end

    def new
      puts "WERE IN NEW"
      puts params[:item_id.to_s]
      @item = Item.find_by_id(params[:item_id.to_s])
      if(logged_in?)
      @user = User.find_by_id(current_user.id.to_s)
      @items = Item.where(user: @user)
      end
      @offer = Offer.new
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
        @old = Offer.where(initiator_id: current_user.id.to_s).where(offered_item_id: @offer.requested_item_id)
        @old.delete_all
            @offer.save
            flash[:success] = "Trade success,checkout your new item"
            redirect_to user_path_url(@user)
          else
            @offer.save
            flash[:success] = "Trade rejected,browse more"
            redirect_to user_path_url(@user)
          end
      end

      def delete
        @user = User.find_by_id(current_user.id.to_s)
        @offer = Offer.find_by_id(params[:id])
        @offer.destroy
        flash[:success] = "Trade deleted"
        redirect_to offers_path_url(@user)
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
