class UsuariosController < ApplicationController

	def index
	
	end

	def new
		@usuario = Usuario.new
	end

	def create
		@usuario = Usuario.new(params[:usuario])
		if	@usuario.save
			flash[:notice] = "Usuário criado."
			redirect_to @usuario
		else
			flash[:alert] = "Usuário não foi criado"
			render :action => "new"
		end
	end

	def show
		@usuario = Usuario.find(params[:id])
		@image = @usuario.images
	end

end
