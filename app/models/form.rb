class Form < MailForm::Base
	attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :salary, :validate => true
  attribute :location, :validate => true
  attribute :message, :validate => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Trident Applicant",
      :to => "sarah.humphreys59@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end

end
