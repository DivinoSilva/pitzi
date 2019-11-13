class OffersController < ApplicationController
  def index
    @offers = Offer.all.order(:id)
  rescue => e
    flash[:alert] = e.message
    redirect_back(fallback_location: root_path)
  end

  def create
    Offer.create(annual_value: params['annual_value'])

    redirect_back(fallback_location: root_path)
  rescue => e
    flash[:alert] = e.message
    redirect_back(fallback_location: root_path)
  end
end