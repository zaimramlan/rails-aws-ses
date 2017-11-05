class UserMailer < ApplicationMailer
  after_action :deliver_email

  def send_test_email(params)
    @subject = params[:subject]
    @message = convert_special_characters_in(params[:message])
  end

  private

    def deliver_email
      mail(:to => ENV['TO_EMAIL'], :subject => @subject)
    end

    def convert_special_characters_in(message)
      message = message.gsub("\n", '<br>')
      return message.html_safe
    end
end
