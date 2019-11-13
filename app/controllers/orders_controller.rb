class OrdersController < ApplicationController
  def create
   #Builder
    rescue => e
      flash[:alert] = e.message
      redirect_to :back
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