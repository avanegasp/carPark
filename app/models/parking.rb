class Parking < ApplicationRecord
  belongs_to :vehicle
  validates :rate, numericality: true
  validates :arrival_time, numericality: true
  validates :exit_time, numericality: true
end
