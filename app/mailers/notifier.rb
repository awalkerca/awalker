class Notifier < ActionMailer::Base
  default :to =>"contact@awalker.ca"
  default :from => "noreply@awalker.ca"
  default :subject => "awalker.ca: contact form"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifier.contact_message.subject
  #
  def new_message(message)
    @message = message
    mail
  end
end
