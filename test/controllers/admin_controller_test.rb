require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get name" do
    get admin_name_url
    assert_response :success
  end

  test "should get index" do
    get admin_index_url
    assert_response :success
  end

end
