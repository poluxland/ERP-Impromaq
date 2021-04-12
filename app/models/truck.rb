class Truck < ApplicationRecord
    has_many :checklist, dependent: :destroy
    has_many :equipo, dependent: :destroy
    has_many :intervention, dependent: :destroy
end
