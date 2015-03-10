require 'test_helper'

class SiteFileTypesControllerTest < ActionController::TestCase
  setup do
    @site_file_type = site_file_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:site_file_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create site_file_type" do
    assert_difference('SiteFileType.count') do
      post :create, site_file_type: { description: @site_file_type.description, title: @site_file_type.title }
    end

    assert_redirected_to site_file_type_path(assigns(:site_file_type))
  end

  test "should show site_file_type" do
    get :show, id: @site_file_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @site_file_type
    assert_response :success
  end

  test "should update site_file_type" do
    patch :update, id: @site_file_type, site_file_type: { description: @site_file_type.description, title: @site_file_type.title }
    assert_redirected_to site_file_type_path(assigns(:site_file_type))
  end

  test "should destroy site_file_type" do
    assert_difference('SiteFileType.count', -1) do
      delete :destroy, id: @site_file_type
    end

    assert_redirected_to site_file_types_path
  end
end
