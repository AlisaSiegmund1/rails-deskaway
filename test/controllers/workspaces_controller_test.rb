require 'test_helper'

class WorkspacesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get workspaces_show_url
    assert_response :success
  end

  test "should get index" do
    get workspaces_index_url
    assert_response :success
  end

end
