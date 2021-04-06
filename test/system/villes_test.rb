require "application_system_test_case"

class VillesTest < ApplicationSystemTestCase
  setup do
    @ville = villes(:one)
  end

  test "visiting the index" do
    visit villes_url
    assert_selector "h1", text: "Villes"
  end

  test "creating a Ville" do
    visit villes_url
    click_on "New Ville"

    fill_in "Description", with: @ville.description
    fill_in "Name", with: @ville.name
    fill_in "Picture", with: @ville.picture
    click_on "Create Ville"

    assert_text "Ville was successfully created"
    click_on "Back"
  end

  test "updating a Ville" do
    visit villes_url
    click_on "Edit", match: :first

    fill_in "Description", with: @ville.description
    fill_in "Name", with: @ville.name
    fill_in "Picture", with: @ville.picture
    click_on "Update Ville"

    assert_text "Ville was successfully updated"
    click_on "Back"
  end

  test "destroying a Ville" do
    visit villes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ville was successfully destroyed"
  end
end
