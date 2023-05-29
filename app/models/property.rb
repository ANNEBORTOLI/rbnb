class Property < ApplicationRecord
  belongs_to :user
  has_many :reservations

  validates :home_type, :total_occupancy, :address, :price, :user_id, presence: true

  # home_type can only be one of the types we defined. E.g :
  # [house, appartament, flat, room]
end
