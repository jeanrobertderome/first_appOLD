require 'test_helper'

class ProfesseursControllerTest < ActionController::TestCase
  setup do
    @professeur = professeurs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:professeurs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create professeur" do
    assert_difference('Professeur.count') do
      post :create, :professeur => @professeur.attributes
    end

    assert_redirected_to professeur_path(assigns(:professeur))
  end

  test "should show professeur" do
    get :show, :id => @professeur.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @professeur.to_param
    assert_response :success
  end

  test "should update professeur" do
    put :update, :id => @professeur.to_param, :professeur => @professeur.attributes
    assert_redirected_to professeur_path(assigns(:professeur))
  end

  test "should destroy professeur" do
    assert_difference('Professeur.count', -1) do
      delete :destroy, :id => @professeur.to_param
    end

    assert_redirected_to professeurs_path
  end
end
