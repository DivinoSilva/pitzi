class Customer < ApplicationRecord
  validates :document, :email, :name, presence: true
  validates :email, :document, uniqueness: true

  after_create :set_score
  has_many :orders
  has_many :devices
  
  private

  def set_score
    update(score: 'E')
  end
end