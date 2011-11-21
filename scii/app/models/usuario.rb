class Usuario < ActiveRecord::Base
	validates :nome, :presence => true
end
