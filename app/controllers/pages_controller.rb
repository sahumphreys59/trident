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
		@parttimejobs = Parttimejob.order(created_at: :asc)
	end

	def apply
	end

	def create
  		page = Page.new(params[:contact_form])
      if page.deliver
        redirect_to careers_path, :notice => 'Thank you for applying.'
      else
        redirect_to apply_path, :notice => 'Message could not be sent. Please try again.'
      end
  end

	private


end
