class Truck < ApplicationRecord
    has_many :checklist
    has_many :equipo
end
