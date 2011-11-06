class Usuario < ActiveRecord::Base
	belongs_to :catetoria_de_usuario
	belongs_to :catetoria_de_acesso

	has_many :atributo
	has_many :faz_comentario
	has_many :sugestao

	has_and_belongs_to_many :sugestao
end
