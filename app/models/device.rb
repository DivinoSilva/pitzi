class Device < ApplicationRecord
  validates_presence_of :model, :imei
  validates :email, :imei, uniqueness: true

  belongs_to :customer
end