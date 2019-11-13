class Offer < ApplicationRecord
  class InvalidPeriod < StandardError; end
  class InvalidValue < StandardError; end

  before_save :valid_period, :valid_annual_value
  validates_presence_of :name

  has_many :orders

  private

  def valid_period

  end

  def valid_annual_value

  end
end