require "test_helper"

class NguoidungsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nguoidung = nguoidungs(:one)
  end

  test "should get index" do
    get nguoidungs_url
    assert_response :success
  end

  test "should get new" do
    get new_nguoidung_url
    assert_response :success
  end

  test "should create nguoidung" do
    assert_difference("Nguoidung.count") do
      post nguoidungs_url, params: { nguoidung: { AnhDaiDien: @nguoidung.AnhDaiDien, DiaChi: @nguoidung.DiaChi, Email: @nguoidung.Email, MatKhau: @nguoidung.MatKhau, SDT: @nguoidung.SDT, TenND: @nguoidung.TenND, loai_quyen_id: @nguoidung.loai_quyen_id } }
    end

    assert_redirected_to nguoidung_url(Nguoidung.last)
  end

  test "should show nguoidung" do
    get nguoidung_url(@nguoidung)
    assert_response :success
  end

  test "should get edit" do
    get edit_nguoidung_url(@nguoidung)
    assert_response :success
  end

  test "should update nguoidung" do
    patch nguoidung_url(@nguoidung), params: { nguoidung: { AnhDaiDien: @nguoidung.AnhDaiDien, DiaChi: @nguoidung.DiaChi, Email: @nguoidung.Email, MatKhau: @nguoidung.MatKhau, SDT: @nguoidung.SDT, TenND: @nguoidung.TenND, loai_quyen_id: @nguoidung.loai_quyen_id } }
    assert_redirected_to nguoidung_url(@nguoidung)
  end

  test "should destroy nguoidung" do
    assert_difference("Nguoidung.count", -1) do
      delete nguoidung_url(@nguoidung)
    end

    assert_redirected_to nguoidungs_url
  end
end
