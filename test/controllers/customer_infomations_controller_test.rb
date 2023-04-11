require "test_helper"

class CustomerInfomationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer_infomation = customer_infomations(:one)
  end

  test "should get index" do
    get customer_infomations_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_infomation_url
    assert_response :success
  end

  test "should create customer_infomation" do
    assert_difference("CustomerInfomation.count") do
      post customer_infomations_url, params: { customer_infomation: { address: @customer_infomation.address, citizen_identification: @customer_infomation.citizen_identification, date_of_birth: @customer_infomation.date_of_birth, email: @customer_infomation.email, gender: @customer_infomation.gender, name: @customer_infomation.name, phone_number: @customer_infomation.phone_number } }
    end

    assert_redirected_to customer_infomation_url(CustomerInfomation.last)
  end

  test "should show customer_infomation" do
    get customer_infomation_url(@customer_infomation)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_infomation_url(@customer_infomation)
    assert_response :success
  end

  test "should update customer_infomation" do
    patch customer_infomation_url(@customer_infomation), params: { customer_infomation: { address: @customer_infomation.address, citizen_identification: @customer_infomation.citizen_identification, date_of_birth: @customer_infomation.date_of_birth, email: @customer_infomation.email, gender: @customer_infomation.gender, name: @customer_infomation.name, phone_number: @customer_infomation.phone_number } }
    assert_redirected_to customer_infomation_url(@customer_infomation)
  end

  test "should destroy customer_infomation" do
    assert_difference("CustomerInfomation.count", -1) do
      delete customer_infomation_url(@customer_infomation)
    end

    assert_redirected_to customer_infomations_url
  end
end
