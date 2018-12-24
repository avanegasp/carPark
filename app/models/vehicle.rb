class Vehicle < ApplicationRecord
  has_many :parkings, dependent: :destroy
  validates :plate, presence: true
end
