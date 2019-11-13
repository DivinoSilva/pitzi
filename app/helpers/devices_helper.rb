module DevicesHelper
  def options_for_device_select(customer)
    options_for_select(
      customer.devices.order(:id).map{ |c| ["#{c.model}","#{c.id}"]}
    )
  end
end