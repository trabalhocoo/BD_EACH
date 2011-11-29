class AddPontuacaoToUsuario < ActiveRecord::Migration
  def change
    add_column :usuarios, :pontuacao, :integer,  :default => 0
  end
end
