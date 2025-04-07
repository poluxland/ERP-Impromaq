class Truck < ApplicationRecord
  has_many :checklists
  has_many :equipos
  has_many :interventions
  has_many :mantencions
end
