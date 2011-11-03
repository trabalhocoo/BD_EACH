require 'test_helper'

class CategoriaDeAcessosControllerTest < ActionController::TestCase
  setup do
    @categoria_de_acesso = categoria_de_acessos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categoria_de_acessos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categoria_de_acesso" do
    assert_difference('CategoriaDeAcesso.count') do
      post :create, :categoria_de_acesso => @categoria_de_acesso.attributes
    end

    assert_redirected_to categoria_de_acesso_path(assigns(:categoria_de_acesso))
  end

  test "should show categoria_de_acesso" do
    get :show, :id => @categoria_de_acesso.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @categoria_de_acesso.to_param
    assert_response :success
  end

  test "should update categoria_de_acesso" do
    put :update, :id => @categoria_de_acesso.to_param, :categoria_de_acesso => @categoria_de_acesso.attributes
    assert_redirected_to categoria_de_acesso_path(assigns(:categoria_de_acesso))
  end

  test "should destroy categoria_de_acesso" do
    assert_difference('CategoriaDeAcesso.count', -1) do
      delete :destroy, :id => @categoria_de_acesso.to_param
    end

    assert_redirected_to categoria_de_acessos_path
  end
end
