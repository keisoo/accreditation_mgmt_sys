require 'test_helper'

class AreasControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get areas_show_url
    assert_response :success
  end

end
