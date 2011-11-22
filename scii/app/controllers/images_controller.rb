class ImagesController < ApplicationController

	def index
		@image = Image.all
	end
	
	def new
		@image = Image.new
	end
	
	def create
		@image = Image.new(params[:image])
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
	
	def show
		@image = Image.find(params[:id])
	end

end
