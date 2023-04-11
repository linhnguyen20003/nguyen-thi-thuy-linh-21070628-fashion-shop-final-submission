require "application_system_test_case"

class PaymentInformationsTest < ApplicationSystemTestCase
  setup do
    @payment_information = payment_informations(:one)
  end

  test "visiting the index" do
    visit payment_informations_url
    assert_selector "h1", text: "Payment information"
  end

  test "should create payment information" do
    visit payment_informations_url
    click_on "New payment information"

    fill_in "Infomation", with: @payment_information.infomation_id
    fill_in "Invoice number", with: @payment_information.invoice_number
    fill_in "Payment date", with: @payment_information.payment_date
    fill_in "Type", with: @payment_information.type
    click_on "Create Payment information"

    assert_text "Payment information was successfully created"
    click_on "Back"
  end

  test "should update Payment information" do
    visit payment_information_url(@payment_information)
    click_on "Edit this payment information", match: :first

    fill_in "Infomation", with: @payment_information.infomation_id
    fill_in "Invoice number", with: @payment_information.invoice_number
    fill_in "Payment date", with: @payment_information.payment_date
    fill_in "Type", with: @payment_information.type
    click_on "Update Payment information"

    assert_text "Payment information was successfully updated"
    click_on "Back"
  end

  test "should destroy Payment information" do
    visit payment_information_url(@payment_information)
    click_on "Destroy this payment information", match: :first

    assert_text "Payment information was successfully destroyed"
  end
end
