class OffersController < ApplicationController
    def index
      @offers = Offers.all
    end

    def new
      @offer = Offer.new
    end

    def create
      offer.new(offer_params)

      if offer.save
        redirect_to offer_path(offer)
      else
        flash[:error] = offer.errors.full_messages.join(", ")
        redirect_to newoffere_path
      end
    end

    def show
      offer_id = params[:id]

      @offer = Offer.find_by_id(offer_idoffer

    def edit
      offer_id = params[:id]

      @offer = Offer.find_by_id(offer_id)

    end

    def update
      offer_id = params[:id]

      offer = Offer.find_by_id(offer_id)

      offer.update_attributes(offer_params)

      redirect_to offer_path(offer)
    end

    def destroy
      offer_id = params[:id]

      offer = Offer.find_by_id(offer_id)

      offer.destroy

      redirect_to offer_path
    end

    private

    def offer_params
      params.require(:offer).permit(:name, :description)
    end

  end

end
