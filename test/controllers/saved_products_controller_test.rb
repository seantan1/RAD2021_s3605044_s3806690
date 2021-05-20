require 'test_helper'

class SavedProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @saved_product = saved_products(:one)
  end

  test "should get index" do
    get saved_products_url
    assert_response :success
  end

  test "should get new" do
    get new_saved_product_url
    assert_response :success
  end

  test "should create saved_product" do
    assert_difference('SavedProduct.count') do
      post saved_products_url, params: { saved_product: { count: @saved_product.count, product_id: @saved_product.product_id } }
    end

    assert_redirected_to saved_product_url(SavedProduct.last)
  end

  test "should show saved_product" do
    get saved_product_url(@saved_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_saved_product_url(@saved_product)
    assert_response :success
  end

  test "should update saved_product" do
    patch saved_product_url(@saved_product), params: { saved_product: { count: @saved_product.count, product_id: @saved_product.product_id } }
    assert_redirected_to saved_product_url(@saved_product)
  end

  test "should destroy saved_product" do
    assert_difference('SavedProduct.count', -1) do
      delete saved_product_url(@saved_product)
    end

    assert_redirected_to saved_products_url
  end
end
