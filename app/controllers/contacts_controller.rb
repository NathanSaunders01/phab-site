require 'sendgrid-ruby'
include SendGrid

class ContactsController < ApplicationController

  def new 
    @contact = Contact.new
  end

  def create
    # @contact = Contact.new(params[:contact])
    # @contact.request = request
    club = Club.first
    from = Email.new(email: 'nathandotsaunders@gmail.com', name: "Nathan")
    to = Email.new(email: 'nathandotsaunders@gmail.com')
    subject = "You have a message from Phab #{club.club_name}"
    text = "Email: #{params[:contact][:email]}\n\nMessage: #{params[:contact][:message]}"
    content = Content.new(type: 'text/plain', value:text)
    
    mail = SendGrid::Mail.new(from, subject, to, content)

    sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
    response = sg.client.mail._('send').post(request_body: mail.to_json)
    puts response.status_code
    puts response.body
    puts response.headers
    puts mail.to_json
    # if @contact.deliver
    #   flash[:success] = 'Your message sent successfully!'
    #   redirect_to root_path
    # else
    #   flash[:error] = 'There was a problem sending your message.'
    #   redirect_to contact_us_path
    # end
  end
end
