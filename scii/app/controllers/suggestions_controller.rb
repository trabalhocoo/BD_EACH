class SuggestionsController < ApplicationController
	before_filter :authenticate_usuario!, :except => [:index, :show]

	def create
		@image = Image.find(params[:image_id])
		@atributo = @image.atributos
		@atributo.each do |atributo|
			@suggestion = @image.suggestions.create(params[:suggestion].merge!(:usuario => current_usuario, :atributo => atributo))
		end
		redirect_to image_path(@image)
	end

end
