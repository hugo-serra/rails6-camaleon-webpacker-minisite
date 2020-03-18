class ContactUsController < ApplicationController
  def send_email
    byebug
    # render json: params
    ContactUsMailer.contact_email(params).deliver
    redirect_to contact_us_path
  end
end
