class ApplicationController < ActionController::Base


	def after_sign_in_path_for(resource)
		events_path
	end	

	def after_sign_out_path_for(resource)
		events_path
	end	


	private
	

	
			
end
