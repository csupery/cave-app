require "application_system_test_case"

class CastlesTest < ApplicationSystemTestCase
  setup do
    @castle = castles(:one)
  end

  test "visiting the index" do
    visit castles_url
    assert_selector "h1", text: "Castles"
  end

  test "creating a Castle" do
    visit castles_url
    click_on "New Castle"

    fill_in "Appellation", with: @castle.appellation
    fill_in "Country", with: @castle.country
    fill_in "Name", with: @castle.name
    click_on "Create Castle"

    assert_text "Castle was successfully created"
    click_on "Back"
  end

  test "updating a Castle" do
    visit castles_url
    click_on "Edit", match: :first

    fill_in "Appellation", with: @castle.appellation
    fill_in "Country", with: @castle.country
    fill_in "Name", with: @castle.name
    click_on "Update Castle"

    assert_text "Castle was successfully updated"
    click_on "Back"
  end

  test "destroying a Castle" do
    visit castles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Castle was successfully destroyed"
  end
end
