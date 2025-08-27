class AddComentariosToMedidas < ActiveRecord::Migration[6.1]
  def change
    add_column :medidas, :comentarios_haver, :string
    add_column :medidas, :comentarios_vento, :string
    add_column :medidas, :comentarios_bigbag, :string
  end
end
