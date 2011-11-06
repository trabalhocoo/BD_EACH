class CategoriaDeUsuario < ActiveRecord::Base
	has_many :usuario
end
