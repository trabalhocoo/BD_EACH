class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :url
      t.text :descricao
      t.decimal :pontuacao, :default => 0.0

      t.timestamps
    end
  end
end
