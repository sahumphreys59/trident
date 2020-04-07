class FulltimejobsController < ApplicationController
	before_action :authenticate_user!, only: :create, :edit, :update, :destroy
	def index
	end

	def new
		@fulltimejob = Fulltimejob.new
	end

	def create
		Fulltimejob.create(fulltime_params)
		redirect_to careers_path
	end

	def show
		@fulltimejob = Fulltimejob.find(params[:id])
	end	

	def edit
		@fulltimejob = Fulltimejob.find(params[:id])
	end

	def update
		@fulltimejob = Fulltimejob.find(params[:id])
		@fulltimejob.update_attributes(fulltime_params)
		redirect_to careers_path
	end

	def destroy
		@fulltimejob = Fulltimejob.find(params[:id])
		@fulltimejob.destroy
		redirect_to careers_path
	end	


	private

	def fulltime_params
		params.require(:fulltimejob).permit(:title, :location, :details)
	end	

end
