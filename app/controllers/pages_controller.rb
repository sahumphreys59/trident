class PagesController < ApplicationController
	
	def home
		@event = Event.where('start_date::date >= CURRENT_DATE').first
	end	

	def software
	end
	
	def services
	end

	def support
	end

	def news
	end

	def aboutUs
	end

	def contact
	end	

	def mainframeServices
	end	

	def manintenaceSupport
	end	

	def systemSupport
	end
	
	def ftpSupport
	end		

	def careers
		@fulltimejobs = Fulltimejob.order(created_at: :asc)
	end

	private


end
