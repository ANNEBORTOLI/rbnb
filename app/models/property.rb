class Property < ApplicationRecord
  # home_type can only be one of the types we defined. E.g :
  TYPES = %w[house appartament flat]

  belongs_to :user
  has_many :reservations

  validates :home_type, :total_occupancy, :address, :user_id, presence: true
  validates :price, numericality: true
end
