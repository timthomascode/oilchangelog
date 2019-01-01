require "application_system_test_case"

class OilChangesTest < ApplicationSystemTestCase
  setup do
    @oil_change = oil_changes(:one)
  end

  test "visiting the index" do
    visit oil_changes_url
    assert_selector "h1", text: "Oil Changes"
  end

  test "creating a Oil change" do
    visit oil_changes_url
    click_on "New Oil Change"

    fill_in "Date", with: @oil_change.date
    fill_in "Mileage", with: @oil_change.mileage
    fill_in "Notes", with: @oil_change.notes
    fill_in "Oil used", with: @oil_change.oil_used
    fill_in "Vehicle", with: @oil_change.vehicle_id
    click_on "Create Oil change"

    assert_text "Oil change was successfully created"
    click_on "Back"
  end

  test "updating a Oil change" do
    visit oil_changes_url
    click_on "Edit", match: :first

    fill_in "Date", with: @oil_change.date
    fill_in "Mileage", with: @oil_change.mileage
    fill_in "Notes", with: @oil_change.notes
    fill_in "Oil used", with: @oil_change.oil_used
    fill_in "Vehicle", with: @oil_change.vehicle_id
    click_on "Update Oil change"

    assert_text "Oil change was successfully updated"
    click_on "Back"
  end

  test "destroying a Oil change" do
    visit oil_changes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Oil change was successfully destroyed"
  end
end
