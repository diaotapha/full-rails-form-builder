require "application_system_test_case"

class CandidatsTest < ApplicationSystemTestCase
  setup do
    @candidat = candidats(:one)
  end

  test "visiting the index" do
    visit candidats_url
    assert_selector "h1", text: "Candidats"
  end

  test "creating a Candidat" do
    visit candidats_url
    click_on "New Candidat"

    fill_in "Formulaire", with: @candidat.formulaire_id
    click_on "Create Candidat"

    assert_text "Candidat was successfully created"
    click_on "Back"
  end

  test "updating a Candidat" do
    visit candidats_url
    click_on "Edit", match: :first

    fill_in "Formulaire", with: @candidat.formulaire_id
    click_on "Update Candidat"

    assert_text "Candidat was successfully updated"
    click_on "Back"
  end

  test "destroying a Candidat" do
    visit candidats_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Candidat was successfully destroyed"
  end
end
