class Suggestion < ActiveRecord::Base
	belongs_to :usuario
	belongs_to :image
	belongs_to :atributo
end
