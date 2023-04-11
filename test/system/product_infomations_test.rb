require "application_system_test_case"

class ProductInfomationsTest < ApplicationSystemTestCase
  setup do
    @product_infomation = product_infomations(:one)
  end

  test "visiting the index" do
    visit product_infomations_url
    assert_selector "h1", text: "Product infomations"
  end

  test "should create product infomation" do
    visit product_infomations_url
    click_on "New product infomation"

    fill_in "Description", with: @product_infomation.description
    fill_in "Name", with: @product_infomation.name
    fill_in "Order date", with: @product_infomation.order_date
    fill_in "Price", with: @product_infomation.price
    fill_in "Quantity", with: @product_infomation.quantity
    fill_in "Size", with: @product_infomation.size
    click_on "Create Product infomation"

    assert_text "Product infomation was successfully created"
    click_on "Back"
  end

  test "should update Product infomation" do
    visit product_infomation_url(@product_infomation)
    click_on "Edit this product infomation", match: :first

    fill_in "Description", with: @product_infomation.description
    fill_in "Name", with: @product_infomation.name
    fill_in "Order date", with: @product_infomation.order_date
    fill_in "Price", with: @product_infomation.price
    fill_in "Quantity", with: @product_infomation.quantity
    fill_in "Size", with: @product_infomation.size
    click_on "Update Product infomation"

    assert_text "Product infomation was successfully updated"
    click_on "Back"
  end

  test "should destroy Product infomation" do
    visit product_infomation_url(@product_infomation)
    click_on "Destroy this product infomation", match: :first

    assert_text "Product infomation was successfully destroyed"
  end
end
