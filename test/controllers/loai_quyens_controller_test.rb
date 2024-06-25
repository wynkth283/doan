require "test_helper"

class LoaiQuyensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @loai_quyen = loai_quyens(:one)
  end

  test "should get index" do
    get loai_quyens_url
    assert_response :success
  end

  test "should get new" do
    get new_loai_quyen_url
    assert_response :success
  end

  test "should create loai_quyen" do
    assert_difference("LoaiQuyen.count") do
      post loai_quyens_url, params: { loai_quyen: { TenQuyen: @loai_quyen.TenQuyen } }
    end

    assert_redirected_to loai_quyen_url(LoaiQuyen.last)
  end

  test "should show loai_quyen" do
    get loai_quyen_url(@loai_quyen)
    assert_response :success
  end

  test "should get edit" do
    get edit_loai_quyen_url(@loai_quyen)
    assert_response :success
  end

  test "should update loai_quyen" do
    patch loai_quyen_url(@loai_quyen), params: { loai_quyen: { TenQuyen: @loai_quyen.TenQuyen } }
    assert_redirected_to loai_quyen_url(@loai_quyen)
  end

  test "should destroy loai_quyen" do
    assert_difference("LoaiQuyen.count", -1) do
      delete loai_quyen_url(@loai_quyen)
    end

    assert_redirected_to loai_quyens_url
  end
end
