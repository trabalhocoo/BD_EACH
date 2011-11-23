class ApplicationController < ActionController::Base
  	protect_from_forgery

	private
	
		def render_404
			render :template => 'error_pages/404.html.erb', :status => 404
		end
end
