class UserMailer < ActionMailer::Base
  default from: "contact@chillout-in-losangeles.com"

  def send_email(contact)
    @contact = contact
    mail(:to => 'contact@chillout-in-losangeles.com', :subject => "[Chillout-in-LosAngeles] Notification from " + @contact.email)
  end 
end
