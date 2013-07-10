require 'test_helper'

class JobRecsControllerTest < ActionController::TestCase
  setup do
    @job_rec = job_recs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:job_recs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job_rec" do
    assert_difference('JobRec.count') do
      post :create, job_rec: { DID: @job_rec.DID, Descrip: @job_rec.Descrip, Location: @job_rec.Location, Title: @job_rec.Title }
    end

    assert_redirected_to job_rec_path(assigns(:job_rec))
  end

  test "should show job_rec" do
    get :show, id: @job_rec
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job_rec
    assert_response :success
  end

  test "should update job_rec" do
    put :update, id: @job_rec, job_rec: { DID: @job_rec.DID, Descrip: @job_rec.Descrip, Location: @job_rec.Location, Title: @job_rec.Title }
    assert_redirected_to job_rec_path(assigns(:job_rec))
  end

  test "should destroy job_rec" do
    assert_difference('JobRec.count', -1) do
      delete :destroy, id: @job_rec
    end

    assert_redirected_to job_recs_path
  end
end
