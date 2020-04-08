class ContactsController < ApplicationController
  # def index
  # 	@contact = Contact.new(params[:contact])
  # end

  # def create
  # 	@contact = Contact.new(params[:contact])
  #   @contact.request = request
  #   respond_to do |format|
  #     if @contact.deliver
  #       # re-initialize Contact object for cleared form
  #       @contact = Contact.new
  #       format.html { render 'index'}
  #       format.js   { flash.now[:success] = @message = "Thank you applying." }
  #     else
  #       format.html { render 'index' }
  #       format.js   { flash.now[:error] = @message = "Message did not send." }
  #     end
  #   end
  # end
end
