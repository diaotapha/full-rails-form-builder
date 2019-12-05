require "application_system_test_case"

class FormulairesTest < ApplicationSystemTestCase
  setup do
    @formulaire = formulaires(:one)
  end

  test "visiting the index" do
    visit formulaires_url
    assert_selector "h1", text: "Formulaires"
  end

  test "creating a Formulaire" do
    visit formulaires_url
    click_on "New Formulaire"

    fill_in "Description", with: @formulaire.description
    fill_in "Title", with: @formulaire.title
    click_on "Create Formulaire"

    assert_text "Formulaire was successfully created"
    click_on "Back"
  end

  test "updating a Formulaire" do
    visit formulaires_url
    click_on "Edit", match: :first

    fill_in "Description", with: @formulaire.description
    fill_in "Title", with: @formulaire.title
    click_on "Update Formulaire"

    assert_text "Formulaire was successfully updated"
    click_on "Back"
  end

  test "destroying a Formulaire" do
    visit formulaires_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Formulaire was successfully destroyed"
  end
end
