class ChangeAvanceToBeStringInTrabajos < ActiveRecord::Migration[5.2]
  def change
    change_column :trabajos, :avance, :string
  end
end
