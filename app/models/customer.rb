class Customer < ApplicationRecord
  validates_presence_of :document, :email, :name

  has_many :orders
  has_many :devices
end