class Customer < ApplicationRecord
  has_many :orders

  validates :first_name, presence: true, length: { maximum: 20 }
  validates :last_name, presence: true, length: { maximum: 40 }
  validates :address, presence: true, length: { maximum: 100 }
  validates :phone, presence: true, uniqueness: true
end
