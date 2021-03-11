class AddTruckToChecklists < ActiveRecord::Migration[6.0]
  def change
    add_reference :checklists, :truck, null: false, foreign_key: true
  end
end
