require "application_system_test_case"

class MomosTest < ApplicationSystemTestCase
  setup do
    @momo = momos(:one)
  end

  test "visiting the index" do
    visit momos_url
    assert_selector "h1", text: "Momos"
  end

  test "creating a Momo" do
    visit momos_url
    click_on "New Momo"

    fill_in "Body", with: @momo.body
    fill_in "Title", with: @momo.title
    click_on "Create Momo"

    assert_text "Momo was successfully created"
    click_on "Back"
  end

  test "updating a Momo" do
    visit momos_url
    click_on "Edit", match: :first

    fill_in "Body", with: @momo.body
    fill_in "Title", with: @momo.title
    click_on "Update Momo"

    assert_text "Momo was successfully updated"
    click_on "Back"
  end

  test "destroying a Momo" do
    visit momos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Momo was successfully destroyed"
  end
end
