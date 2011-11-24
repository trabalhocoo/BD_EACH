class CreateImagesAtributosJoin < ActiveRecord::Migration
  def up
  	create_table 'images_atributos', :id => false do |t|
  		t.column 'image_id', :integer
  		t.column 'atributo_id', :integer
  	end
  end

  def down
  	drop_table 'images_atributos'
  end
end
