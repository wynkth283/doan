require "test_helper"

class ChiTietSachControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get chi_tiet_sach_index_url
    assert_response :success
  end
end
