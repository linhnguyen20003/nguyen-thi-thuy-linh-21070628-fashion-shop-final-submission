require "application_system_test_case"

class CustomerInfomationsTest < ApplicationSystemTestCase
  setup do
    @customer_infomation = customer_infomations(:one)
  end

  test "visiting the index" do
    visit customer_infomations_url
    assert_selector "h1", text: "Customer infomations"
  end

  test "should create customer infomation" do
    visit customer_infomations_url
    click_on "New customer infomation"

    fill_in "Address", with: @customer_infomation.address
    fill_in "Citizen identification", with: @customer_infomation.citizen_identification
    fill_in "Date of birth", with: @customer_infomation.date_of_birth
    fill_in "Email", with: @customer_infomation.email
    fill_in "Gender", with: @customer_infomation.gender
    fill_in "Name", with: @customer_infomation.name
    fill_in "Phone number", with: @customer_infomation.phone_number
    click_on "Create Customer infomation"

    assert_text "Customer infomation was successfully created"
    click_on "Back"
  end

  test "should update Customer infomation" do
    visit customer_infomation_url(@customer_infomation)
    click_on "Edit this customer infomation", match: :first

    fill_in "Address", with: @customer_infomation.address
    fill_in "Citizen identification", with: @customer_infomation.citizen_identification
    fill_in "Date of birth", with: @customer_infomation.date_of_birth
    fill_in "Email", with: @customer_infomation.email
    fill_in "Gender", with: @customer_infomation.gender
    fill_in "Name", with: @customer_infomation.name
    fill_in "Phone number", with: @customer_infomation.phone_number
    click_on "Update Customer infomation"

    assert_text "Customer infomation was successfully updated"
    click_on "Back"
  end

  test "should destroy Customer infomation" do
    visit customer_infomation_url(@customer_infomation)
    click_on "Destroy this customer infomation", match: :first

    assert_text "Customer infomation was successfully destroyed"
  end
end
