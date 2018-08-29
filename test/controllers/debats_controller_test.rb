require 'test_helper'

class DebatsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get debats_show_url
    assert_response :success
  end

end
