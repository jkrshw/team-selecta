require 'test_helper'

class AttendingStatesControllerTest < ActionController::TestCase
  setup do
    @attending_state = attending_states(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attending_states)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attending_state" do
    assert_difference('AttendingState.count') do
      post :create, attending_state: {  }
    end

    assert_redirected_to attending_state_path(assigns(:attending_state))
  end

  test "should show attending_state" do
    get :show, id: @attending_state
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @attending_state
    assert_response :success
  end

  test "should update attending_state" do
    patch :update, id: @attending_state, attending_state: {  }
    assert_redirected_to attending_state_path(assigns(:attending_state))
  end

  test "should destroy attending_state" do
    assert_difference('AttendingState.count', -1) do
      delete :destroy, id: @attending_state
    end

    assert_redirected_to attending_states_path
  end
end
