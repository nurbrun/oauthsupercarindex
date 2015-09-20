require 'test_helper'

class SupercarsControllerTest < ActionController::TestCase
  setup do
    @supercar = supercars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:supercars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create supercar" do
    assert_difference('Supercar.count') do
      post :create, supercar: { city: @supercar.city, name: @supercar.name }
    end

    assert_redirected_to supercar_path(assigns(:supercar))
  end

  test "should show supercar" do
    get :show, id: @supercar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @supercar
    assert_response :success
  end

  test "should update supercar" do
    patch :update, id: @supercar, supercar: { city: @supercar.city, name: @supercar.name }
    assert_redirected_to supercar_path(assigns(:supercar))
  end

  test "should destroy supercar" do
    assert_difference('Supercar.count', -1) do
      delete :destroy, id: @supercar
    end

    assert_redirected_to supercars_path
  end
end
