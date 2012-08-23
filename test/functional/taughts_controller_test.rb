require 'test_helper'

class TaughtsControllerTest < ActionController::TestCase
  setup do
    @taught = taughts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:taughts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create taught" do
    assert_difference('Taught.count') do
      post :create, taught: { description: @taught.description, name: @taught.name, user_id: @taught.user_id }
    end

    assert_redirected_to taught_path(assigns(:taught))
  end

  test "should show taught" do
    get :show, id: @taught
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @taught
    assert_response :success
  end

  test "should update taught" do
    put :update, id: @taught, taught: { description: @taught.description, name: @taught.name, user_id: @taught.user_id }
    assert_redirected_to taught_path(assigns(:taught))
  end

  test "should destroy taught" do
    assert_difference('Taught.count', -1) do
      delete :destroy, id: @taught
    end

    assert_redirected_to taughts_path
  end
end
