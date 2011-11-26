class Voto < ActiveRecord::Base
	belongs_to :usuario
	belongs_to :suggestion
end
