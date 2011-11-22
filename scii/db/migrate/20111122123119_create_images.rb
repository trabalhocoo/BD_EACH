class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :url
      t.text :descricao
      t.decimal :pontuacao

      t.timestamps
    end
  end
end
