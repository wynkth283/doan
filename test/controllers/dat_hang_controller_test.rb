require "test_helper"

class DatHangControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dat_hang_index_url
    assert_response :success
  end
end
