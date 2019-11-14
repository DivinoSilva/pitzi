class OrdersController < ApplicationController
  def index
    orders = Order.all.order(:id)

    @orders_presenter = orders.map{ |o| OrderPresenter.new(o) }
  rescue => e
    flash[:alert] = e.message
    redirect_back(fallback_location: root_path)
  end

  def create
    order = OrderBuilder.new(orders_params).build

    order.save! ? (head :ok) : (head :unprocessable_entity)
  rescue => e
    flash[:alert] = e.message
    redirect_back(fallback_location: root_path)
  end

  private
  
  def orders_params
    {
      period: params[:period],
      customer_id: params[:customer_id],
      device_id: params[:device_id],
      offer_id: params[:offer_id]
    }
  end
end