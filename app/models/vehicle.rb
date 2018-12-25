class Vehicle < ApplicationRecord
  has_many :parkings, dependent: :destroy
  validates_format_of :plate, :with => /[A-Z]{3}\d\d\d/
  validates :vehicle_type, presence: true
end
