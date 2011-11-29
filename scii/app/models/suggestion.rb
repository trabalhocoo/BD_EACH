class Suggestion < ActiveRecord::Base
	belongs_to :usuario
	belongs_to :image
	belongs_to :atributo
	has_many :votos, :dependent => :destroy
	has_many :usuarios, :through => :votos, :dependent => :destroy

	default_scope :order => "pontuacao DESC"
end
