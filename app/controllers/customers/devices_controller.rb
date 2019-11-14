class Customers::DevicesController < ApplicationController
  def index
    render json: Device.where(customer_id: params[:customer_id]).order(:manufacturer)
  rescue => e
    flash[:alert] = e.message
    redirect_back(fallback_location: root_path)
  end
end