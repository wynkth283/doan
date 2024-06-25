require "test_helper"

class DonDatHangsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @don_dat_hang = don_dat_hangs(:one)
  end

  test "should get index" do
    get don_dat_hangs_url
    assert_response :success
  end

  test "should get new" do
    get new_don_dat_hang_url
    assert_response :success
  end

  test "should create don_dat_hang" do
    assert_difference("DonDatHang.count") do
      post don_dat_hangs_url, params: { don_dat_hang: { ChiTiet: @don_dat_hang.ChiTiet, DiaChi: @don_dat_hang.DiaChi, Email: @don_dat_hang.Email, NgayDat: @don_dat_hang.NgayDat, SDT: @don_dat_hang.SDT, TenND: @don_dat_hang.TenND, TongTien: @don_dat_hang.TongTien, nguoidung_id: @don_dat_hang.nguoidung_id } }
    end

    assert_redirected_to don_dat_hang_url(DonDatHang.last)
  end

  test "should show don_dat_hang" do
    get don_dat_hang_url(@don_dat_hang)
    assert_response :success
  end

  test "should get edit" do
    get edit_don_dat_hang_url(@don_dat_hang)
    assert_response :success
  end

  test "should update don_dat_hang" do
    patch don_dat_hang_url(@don_dat_hang), params: { don_dat_hang: { ChiTiet: @don_dat_hang.ChiTiet, DiaChi: @don_dat_hang.DiaChi, Email: @don_dat_hang.Email, NgayDat: @don_dat_hang.NgayDat, SDT: @don_dat_hang.SDT, TenND: @don_dat_hang.TenND, TongTien: @don_dat_hang.TongTien, nguoidung_id: @don_dat_hang.nguoidung_id } }
    assert_redirected_to don_dat_hang_url(@don_dat_hang)
  end

  test "should destroy don_dat_hang" do
    assert_difference("DonDatHang.count", -1) do
      delete don_dat_hang_url(@don_dat_hang)
    end

    assert_redirected_to don_dat_hangs_url
  end
end
