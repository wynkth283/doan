require "application_system_test_case"

class DonDatHangsTest < ApplicationSystemTestCase
  setup do
    @don_dat_hang = don_dat_hangs(:one)
  end

  test "visiting the index" do
    visit don_dat_hangs_url
    assert_selector "h1", text: "Don dat hangs"
  end

  test "should create don dat hang" do
    visit don_dat_hangs_url
    click_on "New don dat hang"

    fill_in "Chitiet", with: @don_dat_hang.ChiTiet
    fill_in "Diachi", with: @don_dat_hang.DiaChi
    fill_in "Email", with: @don_dat_hang.Email
    fill_in "Ngaydat", with: @don_dat_hang.NgayDat
    fill_in "Sdt", with: @don_dat_hang.SDT
    fill_in "Tennd", with: @don_dat_hang.TenND
    fill_in "Tongtien", with: @don_dat_hang.TongTien
    fill_in "Nguoidung", with: @don_dat_hang.nguoidung_id
    click_on "Create Don dat hang"

    assert_text "Don dat hang was successfully created"
    click_on "Back"
  end

  test "should update Don dat hang" do
    visit don_dat_hang_url(@don_dat_hang)
    click_on "Edit this don dat hang", match: :first

    fill_in "Chitiet", with: @don_dat_hang.ChiTiet
    fill_in "Diachi", with: @don_dat_hang.DiaChi
    fill_in "Email", with: @don_dat_hang.Email
    fill_in "Ngaydat", with: @don_dat_hang.NgayDat
    fill_in "Sdt", with: @don_dat_hang.SDT
    fill_in "Tennd", with: @don_dat_hang.TenND
    fill_in "Tongtien", with: @don_dat_hang.TongTien
    fill_in "Nguoidung", with: @don_dat_hang.nguoidung_id
    click_on "Update Don dat hang"

    assert_text "Don dat hang was successfully updated"
    click_on "Back"
  end

  test "should destroy Don dat hang" do
    visit don_dat_hang_url(@don_dat_hang)
    click_on "Destroy this don dat hang", match: :first

    assert_text "Don dat hang was successfully destroyed"
  end
end
