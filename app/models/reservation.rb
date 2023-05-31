class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :property

  validates :user_id, :property_id, presence: true
  validates :start_date, comparison: { greater_than_or_equal_to: Date.today }
  validates :end_date, comparison: { greater_than: :start_date }
end
