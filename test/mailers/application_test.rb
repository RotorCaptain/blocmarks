require 'test_helper'

class ApplicationTest < ActionMailer::TestCase
  test "views" do
    mail = Application.views
    assert_equal "Views", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
