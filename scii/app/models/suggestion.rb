class Suggestion < ActiveRecord::Base
	belongs_to :usuario
	belongs_to :image
	belongs_to :atributo
	has_many :votos, :dependent => :delete_all
	has_many :usuarios, :through => :votos

	default_scope :order => "pontuacao DESC"
end
