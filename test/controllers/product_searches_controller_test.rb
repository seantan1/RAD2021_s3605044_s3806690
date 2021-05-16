require 'test_helper'

class ProductSearchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_search = product_searches(:one)
  end

  test "should get index" do
    get product_searches_url
    assert_response :success
  end

  test "should get new" do
    get new_product_search_url
    assert_response :success
  end

  test "should create product_search" do
    assert_difference('ProductSearch.count') do
      post product_searches_url, params: { product_search: { search: @product_search.search } }
    end

    assert_redirected_to product_search_url(ProductSearch.last)
  end

  test "should show product_search" do
    get product_search_url(@product_search)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_search_url(@product_search)
    assert_response :success
  end

  test "should update product_search" do
    patch product_search_url(@product_search), params: { product_search: { search: @product_search.search } }
    assert_redirected_to product_search_url(@product_search)
  end

  test "should destroy product_search" do
    assert_difference('ProductSearch.count', -1) do
      delete product_search_url(@product_search)
    end

    assert_redirected_to product_searches_url
  end
end
