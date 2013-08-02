class ApplicationController < ActionController::Base
  protect_from_forgery

	  	def not_authenticated
	  		redirect_to login_url, :alert => "Logueo necesario."	
    	end
end
