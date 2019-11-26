class EventsController < ApplicationController

before_action :authenticate_user!, except: :index

	def index
		@events = Event.order(start_date: :asc).where('start_date::date >= CURRENT_DATE')

	end	

	def new
		@event = Event.new
	end	

	def create
		Event.create(event_params)
		redirect_to events_path
	end	

	def edit
		@event = Event.find(params[:id])
	end	


	def update
		@event = Event.find(params[:id])
		@event.update_attributes(event_params)
		redirect_to events_path
	end

	def destroy
		@event = Event.find(params[:id])
		@event.destroy
		redirect_to events_path
	end	


	private

	def event_params
		params.require(:event).permit(:title, :start_date, :end_date, :location, :details)
	end	

	
	

	

end






	

	