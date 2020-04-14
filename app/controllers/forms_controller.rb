class FormsController < ApplicationController
	
	def new
		@form = Form.new
	end	

	def create
  		@form = Form.new(form_params)
      if @form.deliver
        redirect_to careers_path, :notice => 'Thank you for applying.'
      else
        redirect_to new_form_path, :notice => 'Message could not be sent. Please try again.'
        puts @form.errors.full_messages
        puts params.inspect
      end
  end

  # def params
  # 	params.require(:form).permit(:name, :email, :location, :salary, :message)
  # end
  private

  def form_params
  	params.require(:form).permit(:name, :email, :location, :salary, :message)
  end	
end




# def new
# 		@form = Form.new
# 	end	

# 	def create
#   		@form = Form.new(params[:form])
#   		@form.request = request
#       if @form.deliver
#         redirect_to careers_path, :notice => 'Thank you for applying.'
#       else
#         redirect_to new_form_path, :notice => 'Message could not be sent. Please try again.'
#         puts @form.errors.full_messages
#       end
#   end

