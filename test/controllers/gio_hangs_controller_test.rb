require "test_helper"

class GioHangsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gio_hang = gio_hangs(:one)
  end

  test "should get index" do
    get gio_hangs_url
    assert_response :success
  end

  test "should get new" do
    get new_gio_hang_url
    assert_response :success
  end

  test "should create gio_hang" do
    assert_difference("GioHang.count") do
      post gio_hangs_url, params: { gio_hang: { AnhMinhHoa: @gio_hang.AnhMinhHoa, Gia: @gio_hang.Gia, TenSach: @gio_hang.TenSach, danh_muc_id: @gio_hang.danh_muc_id, nguoidung_id: @gio_hang.nguoidung_id, sach_id: @gio_hang.sach_id, soluong: @gio_hang.soluong, thanhtien: @gio_hang.thanhtien } }
    end

    assert_redirected_to gio_hang_url(GioHang.last)
  end

  test "should show gio_hang" do
    get gio_hang_url(@gio_hang)
    assert_response :success
  end

  test "should get edit" do
    get edit_gio_hang_url(@gio_hang)
    assert_response :success
  end

  test "should update gio_hang" do
    patch gio_hang_url(@gio_hang), params: { gio_hang: { AnhMinhHoa: @gio_hang.AnhMinhHoa, Gia: @gio_hang.Gia, TenSach: @gio_hang.TenSach, danh_muc_id: @gio_hang.danh_muc_id, nguoidung_id: @gio_hang.nguoidung_id, sach_id: @gio_hang.sach_id, soluong: @gio_hang.soluong, thanhtien: @gio_hang.thanhtien } }
    assert_redirected_to gio_hang_url(@gio_hang)
  end

  test "should destroy gio_hang" do
    assert_difference("GioHang.count", -1) do
      delete gio_hang_url(@gio_hang)
    end

    assert_redirected_to gio_hangs_url
  end
end
