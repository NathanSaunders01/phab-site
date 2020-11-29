require 'sendgrid-ruby'
include SendGrid

class ContactsController < ApplicationController

  def new 
    @contact = Contact.new
  end

  def create
    # @contact = Contact.new(params[:contact])
    # @contact.request = request
    from = Email.new(email: 'test@example.com')
    to = Email.new(email: 'test@example.com')
    subject = 'Sending with SendGrid is Fun'
    content = Content.new(type: 'text/plain', value: 'and easy to do anywhere, even with Ruby')
    mail = Mail.new(from, subject, to, content)

    sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
    response = sg.client.mail._('send').post(request_body: mail.to_json)
    puts response.status_code
    puts response.body
    puts response.headers
    # if @contact.deliver
    #   flash[:success] = 'Your message sent successfully!'
    #   redirect_to root_path
    # else
    #   flash[:error] = 'There was a problem sending your message.'
    #   redirect_to contact_us_path
    # end
  end
end
