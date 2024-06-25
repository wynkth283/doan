require "test_helper"

class SachesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sach = saches(:one)
  end

  test "should get index" do
    get saches_url
    assert_response :success
  end

  test "should get new" do
    get new_sach_url
    assert_response :success
  end

  test "should create sach" do
    assert_difference("Sach.count") do
      post saches_url, params: { sach: { AnhMinhHoa: @sach.AnhMinhHoa, Gia: @sach.Gia, Mota: @sach.Mota, NXB: @sach.NXB, Tacgia: @sach.Tacgia, TenSach: @sach.TenSach, danh_muc_id: @sach.danh_muc_id } }
    end

    assert_redirected_to sach_url(Sach.last)
  end

  test "should show sach" do
    get sach_url(@sach)
    assert_response :success
  end

  test "should get edit" do
    get edit_sach_url(@sach)
    assert_response :success
  end

  test "should update sach" do
    patch sach_url(@sach), params: { sach: { AnhMinhHoa: @sach.AnhMinhHoa, Gia: @sach.Gia, Mota: @sach.Mota, NXB: @sach.NXB, Tacgia: @sach.Tacgia, TenSach: @sach.TenSach, danh_muc_id: @sach.danh_muc_id } }
    assert_redirected_to sach_url(@sach)
  end

  test "should destroy sach" do
    assert_difference("Sach.count", -1) do
      delete sach_url(@sach)
    end

    assert_redirected_to saches_url
  end
end
