class OrderPresenter
  def initialize(order)
    @order = order
  end

  def customer_name
    customer.name
  end

  def custumer_score
    customer.score
  end
  
  def device_manufacturer
    device.manufacturer
  end

  def device_imei
    device.imei
  end

  def offer_annual_value
    offer.annual_value
  end

  def loyalty_plan_rate
    loyalty.rate
  end

  def period
    @order.period
  end

  def installment
    number_to_currency(@order.installment)
  end

  private

  def customer
    @customer ||= @order.customer
  end

  def device
    @device ||= @order.device
  end

  def offer
    @offer ||= @order.offer
  end

  def loyalty
    @oloyalty ||= @order.loyalty
  end
end