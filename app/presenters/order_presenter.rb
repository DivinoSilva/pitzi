class OrderPresenter
  def initialize(order)
    @order = order
  end

  def customer_name
    customer.name
  end

  def customer_score
    loyalty_plan.score
  end
  
  def device_manufacturer
    device.manufacturer
  end

  def device_imei
    device.imei
  end

  def device_model
    device.model
  end

  def offer_annual_value
    offer.annual_value.round(2)
  end

  def loyalty_plan_rate
    "#{loyalty_plan.rate.round(2)} %"
  end

  def period
    @order.period
  end

  def installment
   @order.installment
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

  def loyalty_plan
    @loyalty ||= @order.loyalty_plan
  end
end