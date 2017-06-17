require 'test_helper'
 
class UserMailerTest < ActionMailer::TestCase
  test "invite" do
    # Create the email and store it for further assertions
    email = UserMailer.create_invite('chauviettam@gmail.com',
                                     'mmotamchau1@mgail.com', Time.now)
 
    # Send the email, then test that it got queued
    assert_emails 1 do
      email.deliver_now
    end
 
    # Test the body of the sent email contains what we expect it to
    assert_equal ['chauviettam@gmail.com'], email.from
    assert_equal ['mmotamchau1@mgail.com'], email.to
  end
end
