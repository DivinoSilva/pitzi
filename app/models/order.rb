class Order < ApplicationRecord
  SCORES = {
    3 => 'B',
    2 => 'C',
    1 => 'D',
    0 => 'E'
  }

  belongs_to :customer
  belongs_to :device
  belongs_to :offer
  belongs_to :loyalty_plan

  after_create :update_customer_score

  def installment
    (offer.annual_value * (1 -loyalty_plan.rate)) / period
  end

  private
 
  def update_customer_score
    total_orders = costumer.orders.count
    score = ( total_orders > 3) ? 'A' : SCORES[total_orders]
    costumer.update(score: score)
  end
end
