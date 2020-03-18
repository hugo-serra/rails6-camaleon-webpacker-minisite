class ContactUsMailer < ApplicationMailer
  default from: 'shermanos@example.com'

  def contact_email(params)
    @name = params[:name]
    @email = params[:email]
    @subject = params[:subject]
    @message = params[:message]
    mail(to: @email, subject: @subject, template_name: 'layouts/mailer') do |format|
      format.text
    end
  end
end
