class DevicesController < ApplicationController
  def index
    @devices = Device.all.order(:id)
  rescue => e
    flash[:alert] = e.message
    redirect_back(fallback_location: root_path)
  end

  def create
    Device.create(device_params)

    redirect_back(fallback_location: root_path)
  rescue => e
    flash[:alert] = e.message
    redirect_back(fallback_location: root_path)
  end

  private

  def device_params
    {
      manufacturer: params[:manufacturer],
      model: params[:model],
      imei: params[:imei],
      customer_id: params[:customer_id]
    }
  end
end