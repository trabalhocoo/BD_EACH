class CreateCategoriaDeUsuarios < ActiveRecord::Migration
  def change
    create_table :categoria_de_usuarios do |t|
      t.string :nome
      t.string :descricao

      t.timestamps
    end
  end
end
