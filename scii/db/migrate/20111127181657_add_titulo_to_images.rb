class AddTituloToImages < ActiveRecord::Migration
  def change
    add_column :images, :titulo, :string
  end
end
