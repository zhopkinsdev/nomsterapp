class Place < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :address, presence: true
  validates :name, length: {minimum: 5}
  validates :place_dsecription, length: {maximum: 550}
end
