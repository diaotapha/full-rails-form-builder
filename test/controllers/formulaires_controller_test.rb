require 'test_helper'

class FormulairesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @formulaire = formulaires(:one)
  end

  test "should get index" do
    get formulaires_url
    assert_response :success
  end

  test "should get new" do
    get new_formulaire_url
    assert_response :success
  end

  test "should create formulaire" do
    assert_difference('Formulaire.count') do
      post formulaires_url, params: { formulaire: { description: @formulaire.description, title: @formulaire.title } }
    end

    assert_redirected_to formulaire_url(Formulaire.last)
  end

  test "should show formulaire" do
    get formulaire_url(@formulaire)
    assert_response :success
  end

  test "should get edit" do
    get edit_formulaire_url(@formulaire)
    assert_response :success
  end

  test "should update formulaire" do
    patch formulaire_url(@formulaire), params: { formulaire: { description: @formulaire.description, title: @formulaire.title } }
    assert_redirected_to formulaire_url(@formulaire)
  end

  test "should destroy formulaire" do
    assert_difference('Formulaire.count', -1) do
      delete formulaire_url(@formulaire)
    end

    assert_redirected_to formulaires_url
  end
end
