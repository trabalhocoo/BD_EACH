class SuggestionsController < ApplicationController
	before_filter :authenticate_usuario!, :except => [:index, :show]
	helper_method :check_suggestions

	def create
		@image = Image.find(params[:image_id])
		#@atributo = @image.atributos
		#@atributo.each do |atributo|
		#	@suggestion = @image.suggestions.create(params[:suggestion].merge!(:usuario => current_usuario, :atributo => atributo))
		#	@suggestion.save
		#end
		@suggestion = Suggestion.new(params[:suggestion])
		@suggestion.save
		redirect_to image_path(@image)
	end

	def destroy
		@suggestion = current_usuario.suggestions.find(params[:id])
		@suggestion.destroy
		flash[:notice] = "Sugestao foi removida"
		redirect_to images_path
	end

end
