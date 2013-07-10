require 'test_helper'

class ApplyonlinesControllerTest < ActionController::TestCase
  setup do
    @applyonline = applyonlines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:applyonlines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create applyonline" do
    assert_difference('Applyonline.count') do
      post :create, applyonline: {  }
    end

    assert_redirected_to applyonline_path(assigns(:applyonline))
  end

  test "should show applyonline" do
    get :show, id: @applyonline
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @applyonline
    assert_response :success
  end

  test "should update applyonline" do
    put :update, id: @applyonline, applyonline: {  }
    assert_redirected_to applyonline_path(assigns(:applyonline))
  end

  test "should destroy applyonline" do
    assert_difference('Applyonline.count', -1) do
      delete :destroy, id: @applyonline
    end

    assert_redirected_to applyonlines_path
  end
end
