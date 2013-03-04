class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    if (@contact.save)
      flash[:success] = "Message sent to chillout-in-losangeles.com !"  
      UserMailer.send_email(@contact).deliver
      redirect_to new_contacts_path
    else
      flash[:error] = "Error while sending this message. Try again later."  
      render "new"
    end
  end
end
