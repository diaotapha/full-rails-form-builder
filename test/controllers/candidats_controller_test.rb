require 'test_helper'

class CandidatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @candidat = candidats(:one)
  end

  test "should get index" do
    get candidats_url
    assert_response :success
  end

  test "should get new" do
    get new_candidat_url
    assert_response :success
  end

  test "should create candidat" do
    assert_difference('Candidat.count') do
      post candidats_url, params: { candidat: { formulaire_id: @candidat.formulaire_id } }
    end

    assert_redirected_to candidat_url(Candidat.last)
  end

  test "should show candidat" do
    get candidat_url(@candidat)
    assert_response :success
  end

  test "should get edit" do
    get edit_candidat_url(@candidat)
    assert_response :success
  end

  test "should update candidat" do
    patch candidat_url(@candidat), params: { candidat: { formulaire_id: @candidat.formulaire_id } }
    assert_redirected_to candidat_url(@candidat)
  end

  test "should destroy candidat" do
    assert_difference('Candidat.count', -1) do
      delete candidat_url(@candidat)
    end

    assert_redirected_to candidats_url
  end
end
