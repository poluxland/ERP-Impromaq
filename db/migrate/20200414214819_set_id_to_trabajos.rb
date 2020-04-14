class SetIdToTrabajos < ActiveRecord::Migration[5.2]
  def change
    execute("ALTER SEQUENCE trabajos_id_seq RESTART WITH 8001")
  end
end
