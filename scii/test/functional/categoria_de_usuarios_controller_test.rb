require 'test_helper'

class CategoriaDeUsuariosControllerTest < ActionController::TestCase
  setup do
    @categoria_de_usuario = categoria_de_usuarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categoria_de_usuarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categoria_de_usuario" do
    assert_difference('CategoriaDeUsuario.count') do
      post :create, :categoria_de_usuario => @categoria_de_usuario.attributes
    end

    assert_redirected_to categoria_de_usuario_path(assigns(:categoria_de_usuario))
  end

  test "should show categoria_de_usuario" do
    get :show, :id => @categoria_de_usuario.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @categoria_de_usuario.to_param
    assert_response :success
  end

  test "should update categoria_de_usuario" do
    put :update, :id => @categoria_de_usuario.to_param, :categoria_de_usuario => @categoria_de_usuario.attributes
    assert_redirected_to categoria_de_usuario_path(assigns(:categoria_de_usuario))
  end

  test "should destroy categoria_de_usuario" do
    assert_difference('CategoriaDeUsuario.count', -1) do
      delete :destroy, :id => @categoria_de_usuario.to_param
    end

    assert_redirected_to categoria_de_usuarios_path
  end
end
