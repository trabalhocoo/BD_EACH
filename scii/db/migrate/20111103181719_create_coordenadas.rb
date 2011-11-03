class CreateCoordenadas < ActiveRecord::Migration
  def change
    create_table :coordenadas do |t|
      t.decimal :coord_x
      t.decimal :coord_y

      t.timestamps
    end
  end
end
