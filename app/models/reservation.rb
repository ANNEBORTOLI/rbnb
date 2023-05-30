class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :property

  validates :start_date, :end_date, :price, :total_price, :user_id, :property_id, presence: true
end