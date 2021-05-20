require 'test_helper'

class CustomerRatingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer_rating = customer_ratings(:one)
  end

  test "should get index" do
    get customer_ratings_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_rating_url
    assert_response :success
  end

  test "should create customer_rating" do
    assert_difference('CustomerRating.count') do
      post customer_ratings_url, params: { customer_rating: { rating: @customer_rating.rating, user_id: @customer_rating.user_id } }
    end

    assert_redirected_to customer_rating_url(CustomerRating.last)
  end

  test "should show customer_rating" do
    get customer_rating_url(@customer_rating)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_rating_url(@customer_rating)
    assert_response :success
  end

  test "should update customer_rating" do
    patch customer_rating_url(@customer_rating), params: { customer_rating: { rating: @customer_rating.rating, user_id: @customer_rating.user_id } }
    assert_redirected_to customer_rating_url(@customer_rating)
  end

  test "should destroy customer_rating" do
    assert_difference('CustomerRating.count', -1) do
      delete customer_rating_url(@customer_rating)
    end

    assert_redirected_to customer_ratings_url
  end
end
