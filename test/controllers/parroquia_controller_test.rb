require 'test_helper'

class ParroquiaControllerTest < ActionController::TestCase
  setup do
    @parroquium = parroquia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parroquia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parroquium" do
    assert_difference('Parroquium.count') do
      post :create, parroquium: { municipio_id: @parroquium.municipio_id, nombre: @parroquium.nombre }
    end

    assert_redirected_to parroquium_path(assigns(:parroquium))
  end

  test "should show parroquium" do
    get :show, id: @parroquium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parroquium
    assert_response :success
  end

  test "should update parroquium" do
    patch :update, id: @parroquium, parroquium: { municipio_id: @parroquium.municipio_id, nombre: @parroquium.nombre }
    assert_redirected_to parroquium_path(assigns(:parroquium))
  end

  test "should destroy parroquium" do
    assert_difference('Parroquium.count', -1) do
      delete :destroy, id: @parroquium
    end

    assert_redirected_to parroquia_path
  end
end
