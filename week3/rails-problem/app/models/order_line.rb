class OrderLine < ApplicationRecord
  belongs_to :order
  belongs_to :product

  validates :quantity, presence: true, numericality: { only_integer: true }
  validates :price, presence: true
  validates :total, presence: true
end
