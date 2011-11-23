class AddImageIdToComentarios < ActiveRecord::Migration
  def change
    add_column :comentarios, :image_id, :integer
  end
end
