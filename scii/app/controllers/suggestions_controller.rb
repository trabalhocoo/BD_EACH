class SuggestionsController < ApplicationController
	before_filter :authenticate_usuario!, :except => [:index, :show]

	def create
		@image = Image.find(params[:image_id])
		@suggestion = @image.suggestions.create(params[:suggestion].merge!(:usuario => current_usuario, :atributo => @image.atributos))
		redirect_to image_path(@image)
	end

end
