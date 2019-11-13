class DevicesController < ApplicationController
  def index
    @devices = Device.all.order(:id)
  rescue => e
    flash[:alert] = e.message
    redirect_back(fallback_location: root_path)
  end

  def create
    Device.create(name: params['name'])

    redirect_back(fallback_location: root_path)
  rescue => e
    flash[:alert] = e.message
    redirect_back(fallback_location: root_path)
  end
end