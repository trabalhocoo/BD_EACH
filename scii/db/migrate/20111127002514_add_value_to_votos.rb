class AddValueToVotos < ActiveRecord::Migration
  def change
    add_column :votos, :value, :boolean
  end
end
