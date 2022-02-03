require 'test_helper'

class CaptionMailerTest < ActionMailer::TestCase
  test "Caption_Created" do
    mail = CaptionMailer.Caption_Created
    assert_equal "Caption created", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
