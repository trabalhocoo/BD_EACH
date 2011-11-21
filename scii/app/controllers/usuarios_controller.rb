class UsuariosController < ApplicationController

	def index
	
	end

	def new
		@usuario = Usuario.new
	end

	def create
		@usuario = Usuario.new(params[:usuario])
		@usuario.save
		flash[:notice] = "Usuário criado."
		redirect_to @usuario
	end

	def show
		@usuario = Usuario.find(params[:id])
	end

end
