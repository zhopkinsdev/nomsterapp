class Place < ApplicationRecord
  belongs_to :user
  has_many :comments

  geocoded_by :address
  after_validation :geocode

  validates :name, presence: true
  validates :address, presence: true
  validates :name, length: { minimum: 5 }
  validates :description, length: { maximum: 500 }
end
