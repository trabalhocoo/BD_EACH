class Usuario < ActiveRecord::Migration
  def up
  	   create_table :usuarios do |t|
		   t.string :nome
		   t.decimal :pontuacao
			t.string :email
			t.string :senha
		   t.timestamps
		end
  end

  def down
  		drop_table :usuarios
  end
end
