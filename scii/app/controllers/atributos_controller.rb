class AtributosController < ApplicationController
	before_filter :authenticate_usuario!, :except => [:index, :show]
	
	rescue_from ActiveRecord::RecordNotFound do
		flash[:notice] = 'The object you tried to access does not exist'
		redirect_to :action => :index   # or e.g. redirect_to :action => :index
	end

	def index
		render_404
	end

	def new
		@atributo = Atributo.new
	end

	def create
		@atributo = current_usuario.atributos.build(params[:atributo])
		if @atributo.save
			flash[:notice] = "Atributo criado"
			redirect_to current_usuario
		else
			flash[:alert] = "Atributo não foi criado"
			render :action => "new"
		end
	end

	def edit
		@atributo = current_usuario.atributos.find(params[:id])
	end

	def update
		@atributo = current_usuario.atributos.find(params[:id])
		@atributo.update_attributes(params[:atributo])
		flash[:notice] = "Atributo Atualizado."
		redirect_to current_usuario
	end

	def destroy
		@atributo = current_usuario.atributos.find(params[:id])
		@atributo.destroy
		flash[:notice] = "Atributo foi removido"
		redirect_to current_usuario_path	
	end

	def show
		@atributo = Atributo.find(params[:id])
	end

end
