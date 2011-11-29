module SuggestionsHelper

	def check_suggestions(atributo_id)
		@image = Image.find(params[:image_id])
		@check = Voto.find(:first, :conditions => ["usuario_id = ? AND atributo_id = ?", current_usuario.id, atributo_id])	
	end
end
