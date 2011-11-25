class CreateImageAtributos < ActiveRecord::Migration
  def up
  	create_table 'image_atributos', :id => false do |t|
  		t.column 'image_id', :integer
  		t.column 'atributo_id', :integer
  	end
  	add_index 'image_atributos', :image_id
  	add_index 'image_atributos', :atributo_id
  end

  def down
  	drop_table 'image_atributos'
  end
end
