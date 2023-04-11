require "test_helper"

class ProductInfomationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_infomation = product_infomations(:one)
  end

  test "should get index" do
    get product_infomations_url
    assert_response :success
  end

  test "should get new" do
    get new_product_infomation_url
    assert_response :success
  end

  test "should create product_infomation" do
    assert_difference("ProductInfomation.count") do
      post product_infomations_url, params: { product_infomation: { description: @product_infomation.description, name: @product_infomation.name, order_date: @product_infomation.order_date, price: @product_infomation.price, quantity: @product_infomation.quantity, size: @product_infomation.size } }
    end

    assert_redirected_to product_infomation_url(ProductInfomation.last)
  end

  test "should show product_infomation" do
    get product_infomation_url(@product_infomation)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_infomation_url(@product_infomation)
    assert_response :success
  end

  test "should update product_infomation" do
    patch product_infomation_url(@product_infomation), params: { product_infomation: { description: @product_infomation.description, name: @product_infomation.name, order_date: @product_infomation.order_date, price: @product_infomation.price, quantity: @product_infomation.quantity, size: @product_infomation.size } }
    assert_redirected_to product_infomation_url(@product_infomation)
  end

  test "should destroy product_infomation" do
    assert_difference("ProductInfomation.count", -1) do
      delete product_infomation_url(@product_infomation)
    end

    assert_redirected_to product_infomations_url
  end
end
