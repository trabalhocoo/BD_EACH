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
	
	def show
		@image = Image.find(params[:id])
	end

end
