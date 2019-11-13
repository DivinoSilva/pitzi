class OrderBuilder
  delegate :installment, to: :@order
  def initialize(attributes)
    @attributes = attributes
  end

  def build
    return nil unless customer && device && offer
    @order = Order.new(customer: customer, device: device, offer: offer,
              loyalty_plan: loyalty_plan, period: @attributes[:period],
              installment: installment)
  end

  private

  def customer
    @customer ||= Customer.find(@attributes[:customer_id])
  rescue => e
    nil
  end

  def device
    @device ||= Device.find(@attributes[:device_id])
  rescue => e
    nil
  end

  def offer
    @offer ||= Offer.find(@attributes[:offer_id])
  rescue => e
    nil
  end

  def loyalty_plan
    @loyalty_plan ||= LoyaltyPlan.find_by(score: customer.score)
  rescue => e
    nil
  end
end