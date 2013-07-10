require 'test_helper'

class JobResultsControllerTest < ActionController::TestCase
  setup do
    @job_result = job_results(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:job_results)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job_result" do
    assert_difference('JobResult.count') do
      post :create, job_result: {  }
    end

    assert_redirected_to job_result_path(assigns(:job_result))
  end

  test "should show job_result" do
    get :show, id: @job_result
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job_result
    assert_response :success
  end

  test "should update job_result" do
    put :update, id: @job_result, job_result: {  }
    assert_redirected_to job_result_path(assigns(:job_result))
  end

  test "should destroy job_result" do
    assert_difference('JobResult.count', -1) do
      delete :destroy, id: @job_result
    end

    assert_redirected_to job_results_path
  end
end
