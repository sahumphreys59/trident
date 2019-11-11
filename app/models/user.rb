class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

	
   ALLOWED_EMAILS = %w[
    sarah.humphreys59@gmail.com
    jaye_cerruti@triserv.com
    tim_humphreys@triserv.com
  ].freeze

  validates :email, inclusion: { in: ALLOWED_EMAILS, message: :invalid }







	# validate :is_email_valid

# 	def is_email_valid
# 	    if ["sarah.humphreys59@gmail.com" "jaye_cerruti@triserv.com" "tim_humphreys@triserv.com"].include?(self.email)
# 	        errors.add :base, "Your email is not authorized for use!"
# 	        return true
# 	    end
# 	end	

# 	User.all.each do |i|

#     if i.valid?
#         puts "VALID"
#     else
#         puts "INVALID"
#     end
# end


end









