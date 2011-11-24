class ComentariosController < ApplicationController
	before_filter :authenticate_usuario!, :except => [:index, :show]	

	def create
		@image = Image.find(params[:image_id])
		@comentario = @image.comentarios.create(params[:comentario].merge!(:usuario => current_usuario))
		redirect_to image_path(@image)
	end

	def destroy
		@image = Image.find(params[:image_id])
		@comentario = @image.comentarios.find(params[:id])
		@comentario.destroy
		flash[:notice] = "comentario removido"
		redirect_to image_path(@image)
	end

end
