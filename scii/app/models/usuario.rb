class Usuario < ActiveRecord::Base
	validates :nome, :presence => true
	has_one :categoria_de_acesso
	has_one :categoria_de_usuario
end
