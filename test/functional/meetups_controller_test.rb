require 'test_helper'

class MeetupsControllerTest < ActionController::TestCase
  setup do
    @meetup = meetups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meetups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meetup" do
    assert_difference('Meetup.count') do
      post :create, meetup: { createdby: @meetup.createdby, name: @meetup.name, when: @meetup.when, where: @meetup.where }
    end

    assert_redirected_to meetup_path(assigns(:meetup))
  end

  test "should show meetup" do
    get :show, id: @meetup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meetup
    assert_response :success
  end

  test "should update meetup" do
    put :update, id: @meetup, meetup: { createdby: @meetup.createdby, name: @meetup.name, when: @meetup.when, where: @meetup.where }
    assert_redirected_to meetup_path(assigns(:meetup))
  end

  test "should destroy meetup" do
    assert_difference('Meetup.count', -1) do
      delete :destroy, id: @meetup
    end

    assert_redirected_to meetups_path
  end
end
