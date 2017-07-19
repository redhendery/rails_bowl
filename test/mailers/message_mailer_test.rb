require 'test_helper'

class MessageMailerTest < ActionMailer::TestCase

  test "contact" do
    message = Message.new name: 'Steve',
                          email: 'steve@email.com',
                          body: 'Hello, my name is Steve'

    email = MessageMailer.contact(message)

    assert_emails 1 do
      email.deliver_now
    end

    assert_equal 'Message from Bowling Website', email.subject
    assert_equal ['redhendery@gmail.com'], email.to
    assert_equal ['steve@email.com'], email.from
    assert_match /Hello, my name is Steve/, email.body.encoded
  end
end
