require "application_system_test_case"

class VintagesTest < ApplicationSystemTestCase
  setup do
    @vintage = vintages(:one)
  end

  test "visiting the index" do
    visit vintages_url
    assert_selector "h1", text: "Vintages"
  end

  test "creating a Vintage" do
    visit vintages_url
    click_on "New Vintage"

    fill_in "Castle", with: @vintage.castle_id
    fill_in "Year", with: @vintage.year
    click_on "Create Vintage"

    assert_text "Vintage was successfully created"
    click_on "Back"
  end

  test "updating a Vintage" do
    visit vintages_url
    click_on "Edit", match: :first

    fill_in "Castle", with: @vintage.castle_id
    fill_in "Year", with: @vintage.year
    click_on "Update Vintage"

    assert_text "Vintage was successfully updated"
    click_on "Back"
  end

  test "destroying a Vintage" do
    visit vintages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vintage was successfully destroyed"
  end
end
