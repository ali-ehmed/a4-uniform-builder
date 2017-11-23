require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pages_index_url
    assert_response :success
  end

  test "should get sports" do
    get pages_sports_url
    assert_response :success
  end

  test "should get gender" do
    get pages_gender_url
    assert_response :success
  end

  test "should get category" do
    get pages_category_url
    assert_response :success
  end

end
