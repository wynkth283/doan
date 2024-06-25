require "application_system_test_case"

class DanhMucsTest < ApplicationSystemTestCase
  setup do
    @danh_muc = danh_mucs(:one)
  end

  test "visiting the index" do
    visit danh_mucs_url
    assert_selector "h1", text: "Danh mucs"
  end

  test "should create danh muc" do
    visit danh_mucs_url
    click_on "New danh muc"

    fill_in "Tendm", with: @danh_muc.TenDM
    click_on "Create Danh muc"

    assert_text "Danh muc was successfully created"
    click_on "Back"
  end

  test "should update Danh muc" do
    visit danh_muc_url(@danh_muc)
    click_on "Edit this danh muc", match: :first

    fill_in "Tendm", with: @danh_muc.TenDM
    click_on "Update Danh muc"

    assert_text "Danh muc was successfully updated"
    click_on "Back"
  end

  test "should destroy Danh muc" do
    visit danh_muc_url(@danh_muc)
    click_on "Destroy this danh muc", match: :first

    assert_text "Danh muc was successfully destroyed"
  end
end
