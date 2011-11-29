class Atributo < ActiveRecord::Base
	belongs_to :usuario
	has_many :suggestions, :dependent => :destroy
	has_many :image_atributos, :dependent => :destroy
	has_many :images, :through => :image_atributos, :dependent => :destroy
end
