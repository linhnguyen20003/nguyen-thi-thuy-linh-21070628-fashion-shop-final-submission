require "application_system_test_case"

class PaymentsTest < ApplicationSystemTestCase
  setup do
    @payment = payments(:one)
  end

  test "visiting the index" do
    visit payments_url
    assert_selector "h1", text: "Payments"
  end

  test "should create payment" do
    visit payments_url
    click_on "New payment"

    fill_in "Customer", with: @payment.customer_id
    fill_in "Date time of payment", with: @payment.date_time_of_payment
    fill_in "Invoice number", with: @payment.invoice_number
    fill_in "Payment type", with: @payment.payment_type
    click_on "Create Payment"

    assert_text "Payment was successfully created"
    click_on "Back"
  end

  test "should update Payment" do
    visit payment_url(@payment)
    click_on "Edit this payment", match: :first

    fill_in "Customer", with: @payment.customer_id
    fill_in "Date time of payment", with: @payment.date_time_of_payment
    fill_in "Invoice number", with: @payment.invoice_number
    fill_in "Payment type", with: @payment.payment_type
    click_on "Update Payment"

    assert_text "Payment was successfully updated"
    click_on "Back"
  end

  test "should destroy Payment" do
    visit payment_url(@payment)
    click_on "Destroy this payment", match: :first

    assert_text "Payment was successfully destroyed"
  end
end
