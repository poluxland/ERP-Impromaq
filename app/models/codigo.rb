class Codigo < ApplicationRecord
  has_many :codigo_statuses, dependent: :destroy
end
