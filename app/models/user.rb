class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_one :event_id       

	
   ALLOWED_EMAILS = %w[
    sarah.humphreys59@gmail.com
    jaye_cerruti@triserv.com
    tim_humphreys@triserv.com
    test@triserv.com
  ].freeze

  validates :email, inclusion: { in: ALLOWED_EMAILS, message: :invalid }



end









