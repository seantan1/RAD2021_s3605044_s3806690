require 'test_helper'

class PurchasedProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @purchased_product = purchased_products(:one)
  end

  test "should get index" do
    get purchased_products_url
    assert_response :success
  end

  test "should get new" do
    get new_purchased_product_url
    assert_response :success
  end

  test "should create purchased_product" do
    assert_difference('PurchasedProduct.count') do
      post purchased_products_url, params: { purchased_product: { count: @purchased_product.count, product_id: @purchased_product.product_id } }
    end

    assert_redirected_to purchased_product_url(PurchasedProduct.last)
  end

  test "should show purchased_product" do
    get purchased_product_url(@purchased_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_purchased_product_url(@purchased_product)
    assert_response :success
  end

  test "should update purchased_product" do
    patch purchased_product_url(@purchased_product), params: { purchased_product: { count: @purchased_product.count, product_id: @purchased_product.product_id } }
    assert_redirected_to purchased_product_url(@purchased_product)
  end

  test "should destroy purchased_product" do
    assert_difference('PurchasedProduct.count', -1) do
      delete purchased_product_url(@purchased_product)
    end

    assert_redirected_to purchased_products_url
  end
end
