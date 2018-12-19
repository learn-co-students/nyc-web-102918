require "application_system_test_case"

class HoneyBadgersTest < ApplicationSystemTestCase
  setup do
    @honey_badger = honey_badgers(:one)
  end

  test "visiting the index" do
    visit honey_badgers_url
    assert_selector "h1", text: "Honey Badgers"
  end

  test "creating a Honey badger" do
    visit honey_badgers_url
    click_on "New Honey Badger"

    fill_in "Name", with: @honey_badger.name
    fill_in "Weight", with: @honey_badger.weight
    click_on "Create Honey badger"

    assert_text "Honey badger was successfully created"
    click_on "Back"
  end

  test "updating a Honey badger" do
    visit honey_badgers_url
    click_on "Edit", match: :first

    fill_in "Name", with: @honey_badger.name
    fill_in "Weight", with: @honey_badger.weight
    click_on "Update Honey badger"

    assert_text "Honey badger was successfully updated"
    click_on "Back"
  end

  test "destroying a Honey badger" do
    visit honey_badgers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Honey badger was successfully destroyed"
  end
end
