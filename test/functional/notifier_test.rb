require 'test_helper'

class NotifierTest < ActionMailer::TestCase
  test "new_message" do
    message = Message.new(:name => "Andrew", :email => "test@test.com", :content => "body of email")
    mail = Notifier.new_message(message)
    assert_equal ["contact@awalker.ca"], mail.to
    assert_equal ["noreply@awalker.ca"], mail.from
  end

end
