class OffersController < ApplicationController
  def index
    @offers = Offer.all.order(:id)
  rescue => e
    flash[:alert] = e.message
    redirect_to :back
  end

  def create
    Offer.create(name: params['name'])

    redirect_to :back
    rescue => e
      flash[:alert] = e.message
      redirect_to :back
  end
end