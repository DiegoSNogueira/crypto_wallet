require 'test_helper'

class BirthdaysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get birthdays_index_url
    assert_response :success
  end

end
