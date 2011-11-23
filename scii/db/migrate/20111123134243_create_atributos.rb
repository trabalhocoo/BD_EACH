class CreateAtributos < ActiveRecord::Migration
  def change
    create_table :atributos do |t|
      t.string :nome

      t.timestamps
    end
  end
end
