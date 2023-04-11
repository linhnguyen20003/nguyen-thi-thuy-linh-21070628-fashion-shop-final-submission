require "application_system_test_case"

class InfomationsTest < ApplicationSystemTestCase
  setup do
    @infomation = infomations(:one)
  end

  test "visiting the index" do
    visit infomations_url
    assert_selector "h1", text: "Infomations"
  end

  test "should create infomation" do
    visit infomations_url
    click_on "New infomation"

    fill_in "Address", with: @infomation.address
    fill_in "Customer name", with: @infomation.customer_name
    fill_in "Date of birth", with: @infomation.date_of_birth
    fill_in "Email", with: @infomation.email
    fill_in "Phone number", with: @infomation.phone_number
    click_on "Create Infomation"

    assert_text "Infomation was successfully created"
    click_on "Back"
  end

  test "should update Infomation" do
    visit infomation_url(@infomation)
    click_on "Edit this infomation", match: :first

    fill_in "Address", with: @infomation.address
    fill_in "Customer name", with: @infomation.customer_name
    fill_in "Date of birth", with: @infomation.date_of_birth
    fill_in "Email", with: @infomation.email
    fill_in "Phone number", with: @infomation.phone_number
    click_on "Update Infomation"

    assert_text "Infomation was successfully updated"
    click_on "Back"
  end

  test "should destroy Infomation" do
    visit infomation_url(@infomation)
    click_on "Destroy this infomation", match: :first

    assert_text "Infomation was successfully destroyed"
  end
end
