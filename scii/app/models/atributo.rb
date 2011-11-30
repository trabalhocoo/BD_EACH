class Atributo < ActiveRecord::Base
	belongs_to :usuario
	has_many :suggestions, :dependent => :destroy
	has_many :image_atributos
	has_many :images, :through => :image_atributos
end
