class CategoriaDeAcesso < ActiveRecord::Base
	has_many :usuario
end
