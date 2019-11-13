class Device < ApplicationRecord
  validates_presence_of :model, :imei

  belongs_to :customer
end