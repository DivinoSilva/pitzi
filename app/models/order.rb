class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :device
  belongs_to :offer
  belongs_to :loyalty

  def installment
    (offer.annual_value * (1 -loyalty.discount)) / period
  end
end
