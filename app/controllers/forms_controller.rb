class FormsController < ApplicationController


	def new
		@form = Form.new
	end	

	def create
  		@form = Form.new(params[:contact_form])
      if @form.deliver
        redirect_to careers_path, :notice => 'Thank you for applying.'
      else
        redirect_to apply_path, :notice => 'Message could not be sent. Please try again.'
      end
  end

	private

	def contact_form
		params.require(:form).permit(:name, :email, :location, :salary, :message)
	end
end
