class CreateVotos < ActiveRecord::Migration
  def up
  	create_table 'votos', :id => false do |t|
  		t.column 'usuario_id', :integer
  		t.column 'suggestion_id', :integer
  	end
  	add_index 'votos', :usuario_id
  	add_index 'votos', :suggestion_id
  end

  def down
  	drop_table 'votos'
  end
end
