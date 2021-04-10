class Truck < ApplicationRecord
    has_many :checklist
    has_many :equipo
    has_many :mantencion
end
