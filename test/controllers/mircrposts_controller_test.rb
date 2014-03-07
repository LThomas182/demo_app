require 'test_helper'

class MircrpostsControllerTest < ActionController::TestCase
  setup do
    @mircrpost = mircrposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mircrposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mircrpost" do
    assert_difference('Mircrpost.count') do
      post :create, mircrpost: { content: @mircrpost.content, user_id: @mircrpost.user_id }
    end

    assert_redirected_to mircrpost_path(assigns(:mircrpost))
  end

  test "should show mircrpost" do
    get :show, id: @mircrpost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mircrpost
    assert_response :success
  end

  test "should update mircrpost" do
    patch :update, id: @mircrpost, mircrpost: { content: @mircrpost.content, user_id: @mircrpost.user_id }
    assert_redirected_to mircrpost_path(assigns(:mircrpost))
  end

  test "should destroy mircrpost" do
    assert_difference('Mircrpost.count', -1) do
      delete :destroy, id: @mircrpost
    end

    assert_redirected_to mircrposts_path
  end
end
