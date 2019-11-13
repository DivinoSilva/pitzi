class OrdersController < ApplicationController
  def create
   @orders
  rescue => e
    flash[:alert] = e.message
    redirect_back(fallback_location: root_path)
  end

  private
  
  def orders_params
    {
      name: params[:name],
      description: params[:description],
      item_id: params[:item_id],
      size_id: params[:size_id],
      color_id: params[:color_id]
    }
  end
end