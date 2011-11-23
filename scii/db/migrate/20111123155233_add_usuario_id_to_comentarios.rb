class AddUsuarioIdToComentarios < ActiveRecord::Migration
  def change
    add_column :comentarios, :usuario_id, :integer
  end
end
