class ApplicationController < ActionController::Base
  	protect_from_forgery

	helper_method :check_suggestions

	private
	
		def render_404
			render :template => 'error_pages/404.html.erb', :status => 404
		end

		def check_suggestions(atributo_id)
			check = Suggestion.find(:first, :conditions => ["usuario_id = ? AND atributo_id = ?", current_usuario.id, atributo_id])	
			return check
		end
end
