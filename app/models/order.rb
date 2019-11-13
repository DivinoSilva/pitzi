class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :device
  belongs_to :offer
  belongs_to :loyalty_plan

  def installment
    (offer.annual_value * (1 -loyalty_plan.rate)) / period
  end
end
