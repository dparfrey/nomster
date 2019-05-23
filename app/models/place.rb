class Place < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true, length: { minimum: 3 }

  geocoded_by :address
  after_validation :geocode
end


