require "application_system_test_case"

class CampingsTest < ApplicationSystemTestCase
  setup do
    @camping = campings(:one)
  end

  test "visiting the index" do
    visit campings_url
    assert_selector "h1", text: "Campings"
  end

  test "creating a Camping" do
    visit campings_url
    click_on "New Camping"

    fill_in "Body", with: @camping.body
    fill_in "Name", with: @camping.name
    fill_in "Ville", with: @camping.ville_id
    click_on "Create Camping"

    assert_text "Camping was successfully created"
    click_on "Back"
  end

  test "updating a Camping" do
    visit campings_url
    click_on "Edit", match: :first

    fill_in "Body", with: @camping.body
    fill_in "Name", with: @camping.name
    fill_in "Ville", with: @camping.ville_id
    click_on "Update Camping"

    assert_text "Camping was successfully updated"
    click_on "Back"
  end

  test "destroying a Camping" do
    visit campings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Camping was successfully destroyed"
  end
end
