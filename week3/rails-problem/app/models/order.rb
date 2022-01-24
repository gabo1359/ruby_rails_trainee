class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_lines
  enum status: [:delivered, :undelivered]

  validates :date, presence: true, format: { with: /\d{4}-\d{2}-\d{2}/, message: "Wrong date" }   
  validates :total, presence: true
  validates :status, presence: true

  # Select All orders between dates X and Y for X Customer
  scope :from_customer_and_between, ->(customer, start_date, end_date) { where('date > ? AND date < ?', start_date, end_date).includes(:customer).where(customer: { first_name: customer }) }
  # TEST -> Order.from_customer_and_between('Rima','2022-01-01','2022-01-23')
end
