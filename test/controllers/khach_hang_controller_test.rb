require "test_helper"

class KhachHangControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get khach_hang_index_url
    assert_response :success
  end
end
