class Usuario < ActiveRecord::Base
	has_many :suggestions
	has_many :images, :dependent => :destroy
	has_many :atributos, :dependent => :destroy
	has_many :comentarios, :dependent => :destroy
	has_many :votos
	has_many :suggestions, :through => :votos
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :nome, :email, :password, :password_confirmation, :remember_me
  validates :nome, :presence => true

	def voting?(suggested)
		votos.find_by_suggestion_id(suggested)
	end

	def vote(suggested)
		votos.create!(:suggestion_id => suggested.id)
	end
	
end
