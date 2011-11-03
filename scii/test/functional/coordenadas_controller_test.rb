require 'test_helper'

class CoordenadasControllerTest < ActionController::TestCase
  setup do
    @coordenada = coordenadas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coordenadas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coordenada" do
    assert_difference('Coordenada.count') do
      post :create, :coordenada => @coordenada.attributes
    end

    assert_redirected_to coordenada_path(assigns(:coordenada))
  end

  test "should show coordenada" do
    get :show, :id => @coordenada.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @coordenada.to_param
    assert_response :success
  end

  test "should update coordenada" do
    put :update, :id => @coordenada.to_param, :coordenada => @coordenada.attributes
    assert_redirected_to coordenada_path(assigns(:coordenada))
  end

  test "should destroy coordenada" do
    assert_difference('Coordenada.count', -1) do
      delete :destroy, :id => @coordenada.to_param
    end

    assert_redirected_to coordenadas_path
  end
end
