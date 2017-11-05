class StaticPagesController < ApplicationController
  def index
  end

  def send_email
    begin
      UserMailer.send_test_email(email_params).deliver_now
      redirect_to root_path, :notice => 'Email sent!'
    rescue
      redirect_to root_path, :alert => 'There was an error in sending the email.'
    end
  end

  private

    def email_params
      params.require(:email).permit(:from, :to, :subject, :message)
    end
end
