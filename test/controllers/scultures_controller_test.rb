require 'test_helper'

class SculturesControllerTest < ActionController::TestCase
  setup do
    @sculture = scultures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scultures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sculture" do
    assert_difference('Sculture.count') do
      post :create, sculture: { dimentions: @sculture.dimentions, technic: @sculture.technic, title: @sculture.title, year: @sculture.year }
    end

    assert_redirected_to sculture_path(assigns(:sculture))
  end

  test "should show sculture" do
    get :show, id: @sculture
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sculture
    assert_response :success
  end

  test "should update sculture" do
    patch :update, id: @sculture, sculture: { dimentions: @sculture.dimentions, technic: @sculture.technic, title: @sculture.title, year: @sculture.year }
    assert_redirected_to sculture_path(assigns(:sculture))
  end

  test "should destroy sculture" do
    assert_difference('Sculture.count', -1) do
      delete :destroy, id: @sculture
    end

    assert_redirected_to scultures_path
  end
end
