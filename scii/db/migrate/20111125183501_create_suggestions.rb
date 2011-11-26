class CreateSuggestions < ActiveRecord::Migration
  def change
    create_table :suggestions do |t|
      t.string :sugestao
      t.decimal :pontuacao, :default => 0.0
      t.integer :image_id
      t.integer :atributo_id
      t.integer :usuario_id

      t.timestamps
    end
  end
end
