require 'test_helper'

class SignupsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get signups_index_url
    assert_response :success
  end

  test "should get show" do
    get signups_show_url
    assert_response :success
  end

end
