class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.decimal :pontuacao

      t.timestamps
    end
  end
end
