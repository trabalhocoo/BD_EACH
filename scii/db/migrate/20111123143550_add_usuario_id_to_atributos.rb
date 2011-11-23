class AddUsuarioIdToAtributos < ActiveRecord::Migration
  def change
    add_column :atributos, :usuario_id, :integer
  end
end
