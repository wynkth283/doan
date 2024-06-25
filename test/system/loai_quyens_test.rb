require "application_system_test_case"

class LoaiQuyensTest < ApplicationSystemTestCase
  setup do
    @loai_quyen = loai_quyens(:one)
  end

  test "visiting the index" do
    visit loai_quyens_url
    assert_selector "h1", text: "Loai quyens"
  end

  test "should create loai quyen" do
    visit loai_quyens_url
    click_on "New loai quyen"

    fill_in "Tenquyen", with: @loai_quyen.TenQuyen
    click_on "Create Loai quyen"

    assert_text "Loai quyen was successfully created"
    click_on "Back"
  end

  test "should update Loai quyen" do
    visit loai_quyen_url(@loai_quyen)
    click_on "Edit this loai quyen", match: :first

    fill_in "Tenquyen", with: @loai_quyen.TenQuyen
    click_on "Update Loai quyen"

    assert_text "Loai quyen was successfully updated"
    click_on "Back"
  end

  test "should destroy Loai quyen" do
    visit loai_quyen_url(@loai_quyen)
    click_on "Destroy this loai quyen", match: :first

    assert_text "Loai quyen was successfully destroyed"
  end
end
