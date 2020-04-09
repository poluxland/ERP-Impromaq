class AddQuantityToTrabajos < ActiveRecord::Migration[5.2]
  def change
    add_column :trabajos, :q1, :integer
    add_column :trabajos, :q2, :integer
    add_column :trabajos, :q3, :integer
    add_column :trabajos, :q4, :integer
    add_column :trabajos, :q5, :integer
    add_column :trabajos, :q6, :integer
    add_column :trabajos, :q7, :integer
    add_column :trabajos, :q8, :integer
    add_column :trabajos, :q9, :integer
    add_column :trabajos, :q10, :integer
    add_column :trabajos, :q11, :integer
    add_column :trabajos, :q12, :integer
  end
end
