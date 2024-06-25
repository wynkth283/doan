require "application_system_test_case"

class SachesTest < ApplicationSystemTestCase
  setup do
    @sach = saches(:one)
  end

  test "visiting the index" do
    visit saches_url
    assert_selector "h1", text: "Saches"
  end

  test "should create sach" do
    visit saches_url
    click_on "New sach"

    fill_in "Anhminhhoa", with: @sach.AnhMinhHoa
    fill_in "Gia", with: @sach.Gia
    fill_in "Mota", with: @sach.Mota
    fill_in "Nxb", with: @sach.NXB
    fill_in "Tacgia", with: @sach.Tacgia
    fill_in "Tensach", with: @sach.TenSach
    fill_in "Danh muc", with: @sach.danh_muc_id
    click_on "Create Sach"

    assert_text "Sach was successfully created"
    click_on "Back"
  end

  test "should update Sach" do
    visit sach_url(@sach)
    click_on "Edit this sach", match: :first

    fill_in "Anhminhhoa", with: @sach.AnhMinhHoa
    fill_in "Gia", with: @sach.Gia
    fill_in "Mota", with: @sach.Mota
    fill_in "Nxb", with: @sach.NXB
    fill_in "Tacgia", with: @sach.Tacgia
    fill_in "Tensach", with: @sach.TenSach
    fill_in "Danh muc", with: @sach.danh_muc_id
    click_on "Update Sach"

    assert_text "Sach was successfully updated"
    click_on "Back"
  end

  test "should destroy Sach" do
    visit sach_url(@sach)
    click_on "Destroy this sach", match: :first

    assert_text "Sach was successfully destroyed"
  end
end
