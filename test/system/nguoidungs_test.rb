require "application_system_test_case"

class NguoidungsTest < ApplicationSystemTestCase
  setup do
    @nguoidung = nguoidungs(:one)
  end

  test "visiting the index" do
    visit nguoidungs_url
    assert_selector "h1", text: "Nguoidungs"
  end

  test "should create nguoidung" do
    visit nguoidungs_url
    click_on "New nguoidung"

    fill_in "Anhdaidien", with: @nguoidung.AnhDaiDien
    fill_in "Diachi", with: @nguoidung.DiaChi
    fill_in "Email", with: @nguoidung.Email
    fill_in "Matkhau", with: @nguoidung.MatKhau
    fill_in "Sdt", with: @nguoidung.SDT
    fill_in "Tennd", with: @nguoidung.TenND
    fill_in "Loai quyen", with: @nguoidung.loai_quyen_id
    click_on "Create Nguoidung"

    assert_text "Nguoidung was successfully created"
    click_on "Back"
  end

  test "should update Nguoidung" do
    visit nguoidung_url(@nguoidung)
    click_on "Edit this nguoidung", match: :first

    fill_in "Anhdaidien", with: @nguoidung.AnhDaiDien
    fill_in "Diachi", with: @nguoidung.DiaChi
    fill_in "Email", with: @nguoidung.Email
    fill_in "Matkhau", with: @nguoidung.MatKhau
    fill_in "Sdt", with: @nguoidung.SDT
    fill_in "Tennd", with: @nguoidung.TenND
    fill_in "Loai quyen", with: @nguoidung.loai_quyen_id
    click_on "Update Nguoidung"

    assert_text "Nguoidung was successfully updated"
    click_on "Back"
  end

  test "should destroy Nguoidung" do
    visit nguoidung_url(@nguoidung)
    click_on "Destroy this nguoidung", match: :first

    assert_text "Nguoidung was successfully destroyed"
  end
end
