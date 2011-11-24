class ImagesController < ApplicationController
	before_filter :authenticate_usuario!, :except => [:index, :show]
	
	rescue_from ActiveRecord::RecordNotFound do
		flash[:notice] = 'The object you tried to access does not exist'
		redirect_to :action => :index   # or e.g. redirect_to :action => :index
	end
	
	def index
		@image = Image.all
	end
	
	def new
		@image = Image.new
	end
	
	def create
		@image = current_usuario.images.build(params[:image])
		if	@image.save
			flash[:notice] = "Imagem criada."
			redirect_to @image
		else
			flash[:alert] = "Imagem não foi criada."
			render :action => "new"
		end
	end
	
	def edit
		@image = current_usuario.images.find(params[:id])
		@atributo = current_usuario.atributos.all
	end
	
	def update
		@image = current_usuario.images.find(params[:id])
		@image.update_attributes(params[:image])
		flash[:notice] = "Imagem atualizada."
		redirect_to @image
	end
	
	def destroy
		@image = current_usuario.images.find(params[:id])
		@image.destroy
		flash[:notice] = "Imagem foi removida"
		redirect_to images_path
	end
	
	def show
		@image = Image.find(params[:id])
	end

end
