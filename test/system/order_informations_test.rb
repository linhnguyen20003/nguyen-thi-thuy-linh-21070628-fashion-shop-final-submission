require "application_system_test_case"

class OrderInformationsTest < ApplicationSystemTestCase
  setup do
    @order_information = order_informations(:one)
  end

  test "visiting the index" do
    visit order_informations_url
    assert_selector "h1", text: "Order information"
  end

  test "should create order information" do
    visit order_informations_url
    click_on "New order information"

    fill_in "Date order placed", with: @order_information.date_order_placed
    fill_in "Information", with: @order_information.information_id
    fill_in "Order status code", with: @order_information.order_status_code
    click_on "Create Order information"

    assert_text "Order information was successfully created"
    click_on "Back"
  end

  test "should update Order information" do
    visit order_information_url(@order_information)
    click_on "Edit this order information", match: :first

    fill_in "Date order placed", with: @order_information.date_order_placed
    fill_in "Information", with: @order_information.information_id
    fill_in "Order status code", with: @order_information.order_status_code
    click_on "Update Order information"

    assert_text "Order information was successfully updated"
    click_on "Back"
  end

  test "should destroy Order information" do
    visit order_information_url(@order_information)
    click_on "Destroy this order information", match: :first

    assert_text "Order information was successfully destroyed"
  end
end
