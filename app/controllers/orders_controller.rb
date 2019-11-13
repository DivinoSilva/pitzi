class OrdersController < ApplicationController
  def create
   order = OrderBuilder.new()
  rescue => e
    flash[:alert] = e.message
    redirect_back(fallback_location: root_path)
  end

  private
  
  def orders_params
    {
      period: params[:period],
      customer_id: customer.id,
      device_id: params[:device_id],
      offer_id: params[:offer_id]
    }
  end

  def customer
    @customer ||= Customer.find(params['customer_id'])
  end
end