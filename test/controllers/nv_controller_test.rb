require "test_helper"

class NvControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get nv_index_url
    assert_response :success
  end
end
