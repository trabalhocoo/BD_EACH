class AddUsuarioIdToImages < ActiveRecord::Migration
  def change
    add_column :images, :usuario_id, :integer
  end
end
