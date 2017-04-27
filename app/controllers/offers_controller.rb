class OffersController < ApplicationController

    def index
      @offers = Offer.all
    end

    def new
      @offer = Offer.new
    end

    def show
      @offer = Offer.find_by_id(params[:id])
    end

    def create
      @offer = Offer.new(offer_params)
      if @offer.save
        redirect_to offer_path(@offer)
      else
        flash[:error] = @offer.errors.full_messages.join(", ")
        redirect_to new_offer_path
      end
    end

    private
    def offer_params
      params.require(:offer).permit(:requested_item_id, :offered_item_id, :reciever_id, :initiator_id)
    end
end
