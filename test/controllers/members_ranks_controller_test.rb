require 'test_helper'

class MembersRanksControllerTest < ActionController::TestCase
  setup do
    @members_rank = members_ranks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:members_ranks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create members_rank" do
    assert_difference('MembersRank.count') do
      post :create, members_rank: { date: @members_rank.date, member_id: @members_rank.member_id, ranks_id: @members_rank.ranks_id }
    end

    assert_redirected_to members_rank_path(assigns(:members_rank))
  end

  test "should show members_rank" do
    get :show, id: @members_rank
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @members_rank
    assert_response :success
  end

  test "should update members_rank" do
    patch :update, id: @members_rank, members_rank: { date: @members_rank.date, member_id: @members_rank.member_id, ranks_id: @members_rank.ranks_id }
    assert_redirected_to members_rank_path(assigns(:members_rank))
  end

  test "should destroy members_rank" do
    assert_difference('MembersRank.count', -1) do
      delete :destroy, id: @members_rank
    end

    assert_redirected_to members_ranks_path
  end
end
