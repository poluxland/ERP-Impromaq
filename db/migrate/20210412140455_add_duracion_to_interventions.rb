class AddDuracionToInterventions < ActiveRecord::Migration[6.1]
  def change
    add_column :interventions, :duracion, :integer
  end
end
