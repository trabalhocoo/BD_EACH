class AddTituloToComentarios < ActiveRecord::Migration
  def change
    add_column :comentarios, :titulo, :string
  end
end
