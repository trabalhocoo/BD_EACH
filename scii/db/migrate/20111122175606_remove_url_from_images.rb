class RemoveUrlFromImages < ActiveRecord::Migration
  def up
    remove_column :images, :url
  end

  def down
    add_column :images, :url, :string
  end
end
