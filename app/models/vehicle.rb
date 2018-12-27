class Vehicle < ApplicationRecord
  has_many :parkings, dependent: :destroy
  validates_format_of :plate, :with => /[A-Z]{3}\d\d\d/
end

def same_plate
  if plate == parking.plate
    puts "Esa placa ya existe"
  end
end
