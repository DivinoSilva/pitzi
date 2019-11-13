class DevicesController < ApplicationController
  def index
    @devices = Device.all
  rescue => e
    flash[:alert] = e.message
    redirect_to :back
  end

  def create
    Device.create(name: params['name'])

    redirect_to :back
    rescue => e
      flash[:alert] = e.message
      redirect_to :back
  end
end