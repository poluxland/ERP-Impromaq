class AddTruckToInterventions < ActiveRecord::Migration[6.0]
  def change
    add_reference :interventions, :truck, null: false, foreign_key: true
  end
end
