class LoyaltyPlansController < ApplicationController
  def index
    @loyalty_plans = LoyaltyPlan.all.order(:id)
  rescue => e
    flash[:alert] = e.message
    redirect_to :back
  end
end