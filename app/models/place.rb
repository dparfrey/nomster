class Place < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true, length: { minimum: 3 }

  geocoded_by :address
  after_validation :geocode
end


