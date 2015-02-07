require 'test_helper'

class ClasssifiedsControllerTest < ActionController::TestCase
  setup do
    @classsified = classsifieds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:classsifieds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create classsified" do
    assert_difference('Classsified.count') do
      post :create, classsified: { categoryid: @classsified.categoryid, contactId: @classsified.contactId, details: @classsified.details, expireDate: @classsified.expireDate, postedDate: @classsified.postedDate, status: @classsified.status, title: @classsified.title }
    end

    assert_redirected_to classsified_path(assigns(:classsified))
  end

  test "should show classsified" do
    get :show, id: @classsified
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @classsified
    assert_response :success
  end

  test "should update classsified" do
    patch :update, id: @classsified, classsified: { categoryid: @classsified.categoryid, contactId: @classsified.contactId, details: @classsified.details, expireDate: @classsified.expireDate, postedDate: @classsified.postedDate, status: @classsified.status, title: @classsified.title }
    assert_redirected_to classsified_path(assigns(:classsified))
  end

  test "should destroy classsified" do
    assert_difference('Classsified.count', -1) do
      delete :destroy, id: @classsified
    end

    assert_redirected_to classsifieds_path
  end
end
