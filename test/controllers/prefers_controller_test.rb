require 'test_helper'

class PrefersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prefer = prefers(:one)
  end

  test "should get index" do
    get prefers_url
    assert_response :success
  end

  test "should get new" do
    get new_prefer_url
    assert_response :success
  end

  test "should create prefer" do
    assert_difference('Prefer.count') do
      post prefers_url, params: { prefer: { comment: @prefer.comment, follow: @prefer.follow, like: @prefer.like, user_id: @prefer.user_id } }
    end

    assert_redirected_to prefer_url(Prefer.last)
  end

  test "should show prefer" do
    get prefer_url(@prefer)
    assert_response :success
  end

  test "should get edit" do
    get edit_prefer_url(@prefer)
    assert_response :success
  end

  test "should update prefer" do
    patch prefer_url(@prefer), params: { prefer: { comment: @prefer.comment, follow: @prefer.follow, like: @prefer.like, user_id: @prefer.user_id } }
    assert_redirected_to prefer_url(@prefer)
  end

  test "should destroy prefer" do
    assert_difference('Prefer.count', -1) do
      delete prefer_url(@prefer)
    end

    assert_redirected_to prefers_url
  end
end
