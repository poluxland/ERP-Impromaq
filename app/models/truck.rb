class Truck < ApplicationRecord
  has_many :checklists, dependent: :destroy
  has_many :equipos, dependent: :destroy
  has_many :interventions, dependent: :destroy
end
