require 'test_helper'

class SiteFilesControllerTest < ActionController::TestCase
  setup do
    @site_file = site_files(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:site_files)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create site_file" do
    assert_difference('SiteFile.count') do
      post :create, site_file: { description: @site_file.description, name: @site_file.name, order: @site_file.order, site_file_type_id: @site_file.site_file_type_id, url: @site_file.url }
    end

    assert_redirected_to site_file_path(assigns(:site_file))
  end

  test "should show site_file" do
    get :show, id: @site_file
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @site_file
    assert_response :success
  end

  test "should update site_file" do
    patch :update, id: @site_file, site_file: { description: @site_file.description, name: @site_file.name, order: @site_file.order, site_file_type_id: @site_file.site_file_type_id, url: @site_file.url }
    assert_redirected_to site_file_path(assigns(:site_file))
  end

  test "should destroy site_file" do
    assert_difference('SiteFile.count', -1) do
      delete :destroy, id: @site_file
    end

    assert_redirected_to site_files_path
  end
end
