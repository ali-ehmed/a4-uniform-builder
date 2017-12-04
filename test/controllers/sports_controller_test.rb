require 'test_helper'

class SportsControllerTest < ActionDispatch::IntegrationTest
  test "should get gender" do
    get sports_gender_url
    assert_response :success
  end

  test "should get style" do
    get sports_style_url
    assert_response :success
  end

end
