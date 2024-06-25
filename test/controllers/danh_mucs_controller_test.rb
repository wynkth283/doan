require "test_helper"

class DanhMucsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @danh_muc = danh_mucs(:one)
  end

  test "should get index" do
    get danh_mucs_url
    assert_response :success
  end

  test "should get new" do
    get new_danh_muc_url
    assert_response :success
  end

  test "should create danh_muc" do
    assert_difference("DanhMuc.count") do
      post danh_mucs_url, params: { danh_muc: { TenDM: @danh_muc.TenDM } }
    end

    assert_redirected_to danh_muc_url(DanhMuc.last)
  end

  test "should show danh_muc" do
    get danh_muc_url(@danh_muc)
    assert_response :success
  end

  test "should get edit" do
    get edit_danh_muc_url(@danh_muc)
    assert_response :success
  end

  test "should update danh_muc" do
    patch danh_muc_url(@danh_muc), params: { danh_muc: { TenDM: @danh_muc.TenDM } }
    assert_redirected_to danh_muc_url(@danh_muc)
  end

  test "should destroy danh_muc" do
    assert_difference("DanhMuc.count", -1) do
      delete danh_muc_url(@danh_muc)
    end

    assert_redirected_to danh_mucs_url
  end
end
