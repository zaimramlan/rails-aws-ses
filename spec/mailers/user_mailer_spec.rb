require 'spec_helper'
require 'rails_helper'

describe UserMailer do
  describe '#send_test_email' do
    let(:subject)      { 'Sample subject' }
    let(:message)      { 'Sample message' }
    let(:email_params) { {:subject => subject, :message => message} }
    let(:email)        { UserMailer.send_test_email(email_params) }

    it 'renders the headers' do
      expect(email.from).to eq([ENV['FROM_EMAIL']])
      expect(email.to).to eq([ENV['TO_EMAIL']])
      expect(email.subject).to eq(subject)
    end

    it 'renders the body' do
      expect(email.body.encoded).to match(message)
    end
  end
end
