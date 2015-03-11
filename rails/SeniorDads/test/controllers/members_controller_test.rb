require 'test_helper'

class MembersControllerTest < ActionController::TestCase
  setup do
    @member = members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create member" do
    assert_difference('Member.count') do
      post :create, member: { any_other_comments: @member.any_other_comments, first_computer: @member.first_computer, function: @member.function, join_reason: @member.join_reason, joined: @member.joined, member_type_id: @member.member_type_id, name: @member.name, site_file_id: @member.site_file_id, title: @member.title }
    end

    assert_redirected_to member_path(assigns(:member))
  end

  test "should show member" do
    get :show, id: @member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @member
    assert_response :success
  end

  test "should update member" do
    patch :update, id: @member, member: { any_other_comments: @member.any_other_comments, first_computer: @member.first_computer, function: @member.function, join_reason: @member.join_reason, joined: @member.joined, member_type_id: @member.member_type_id, name: @member.name, site_file_id: @member.site_file_id, title: @member.title }
    assert_redirected_to member_path(assigns(:member))
  end

  test "should destroy member" do
    assert_difference('Member.count', -1) do
      delete :destroy, id: @member
    end

    assert_redirected_to members_path
  end
end
