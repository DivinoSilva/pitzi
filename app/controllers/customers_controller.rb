class CustomersController < ApplicationController
  def index
    @customer = Customer.all
  rescue => e
    flash[:alert] = e.message
    redirect_back(fallback_location: root_path)
  end

  def create
    Customer.create(item_params)

    redirect_back(fallback_location: root_path)
  rescue => e
    flash[:alert] = e.message
    redirect_back(fallback_location: root_path)
  end

  private

  def item_params
    {
      name: params['name'],
      document: params['document'],
      email: params['email']
    }
  end
end