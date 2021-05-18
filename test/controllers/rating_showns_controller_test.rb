require 'test_helper'

class RatingShownsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rating_shown = rating_showns(:one)
  end

  test "should get index" do
    get rating_showns_url
    assert_response :success
  end

  test "should get new" do
    get new_rating_shown_url
    assert_response :success
  end

  test "should create rating_shown" do
    assert_difference('RatingShown.count') do
      post rating_showns_url, params: { rating_shown: { user_id: @rating_shown.user_id } }
    end

    assert_redirected_to rating_shown_url(RatingShown.last)
  end

  test "should show rating_shown" do
    get rating_shown_url(@rating_shown)
    assert_response :success
  end

  test "should get edit" do
    get edit_rating_shown_url(@rating_shown)
    assert_response :success
  end

  test "should update rating_shown" do
    patch rating_shown_url(@rating_shown), params: { rating_shown: { user_id: @rating_shown.user_id } }
    assert_redirected_to rating_shown_url(@rating_shown)
  end

  test "should destroy rating_shown" do
    assert_difference('RatingShown.count', -1) do
      delete rating_shown_url(@rating_shown)
    end

    assert_redirected_to rating_showns_url
  end
end
