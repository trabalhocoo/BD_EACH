class Usuario < ActiveRecord::Base
	has_many :images
	has_many :atributos
	has_many :comentarios
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :nome, :email, :password, :password_confirmation, :remember_me
  validates :nome, :presence => true
end
