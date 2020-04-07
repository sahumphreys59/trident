class ParttimejobsController < ApplicationController
	


	def new
		@parttimejob = Parttimejob.new
	end

	def create
		Parttimejob.create(parttime_params)
		redirect_to careers_path
	end

	def show
		@parttimejob = Parttimejob.find(params[:id])
	end	

	def edit
		@parttimejob = Parttimejob.find(params[:id])
	end

	def update
		@parttimejob = Parttimejob.find(params[:id])
		@parttimejob.update_attributes(parttime_params)
		redirect_to careers_path
	end

	def destroy
		@parttimejob = Parttimejob.find(params[:id])
		@parttimejob.destroy
		redirect_to careers_path
	end	


	private

	def parttime_params
		params.require(:parttimejob).permit(:title, :location, :details)
	end
end
