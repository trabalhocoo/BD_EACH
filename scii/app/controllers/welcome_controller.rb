class WelcomeController < ApplicationController

	def index
	
	end
	
	def new
		@usuario = Usuario.new
	end

end
