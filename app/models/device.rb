class Device < ApplicationRecord
  validates_presence_of :model, :imei
  validates :imei, uniqueness: true

  belongs_to :customer
end