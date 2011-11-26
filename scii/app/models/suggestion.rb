class Suggestion < ActiveRecord::Base
	belongs_to :usuario
	belongs_to :image
	belongs_to :atributo
	has_many :votos
	has_many :usuarios, :through => :votos
end
