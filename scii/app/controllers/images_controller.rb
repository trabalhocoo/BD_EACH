class ImagesController < ApplicationController
	before_filter :authenticate_usuario!, :except => [:index, :show]

	def index
		@image = Image.all
	end
	
	def new
		@image = Image.new
	end
	
	def create
		@image = Image.new(params[:image].merge!(:usuario => current_usuario))
		if	@image.save
			flash[:notice] = "Imagem criada."
			redirect_to @image
		else
			flash[:alert] = "Imagem não foi criada."
			render :action => "new"
		end
	end
	
	def edit
		@image = Image.find(params[:id])
	end
	
	def update
		@image = Image.find(params[:id])
		@image.update_attributes(params[:image])
		flash[:notice] = "Imagem atualizada."
		redirect_to @image
	end
	
	def destroy
		@image = Image.find(params[:id])
		@image.destroy
		flash[:notice] = "Imagem foi removida"
		redirect_to images_path
	end
	
	def show
		@image = Image.find(params[:id])
	end

end
