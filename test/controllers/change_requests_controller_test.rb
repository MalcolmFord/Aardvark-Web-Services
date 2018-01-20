require 'test_helper'

class ChangeRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @change_request = change_requests(:one)
  end

  test "should get index" do
    get change_requests_url, as: :json
    assert_response :success
  end

  test "should create change_request" do
    assert_difference('ChangeRequest.count') do
      post change_requests_url, params: { change_request: { business_id: @change_request.business_id, description: @change_request.description, title: @change_request.title } }, as: :json
    end

    assert_response 201
  end

  test "should show change_request" do
    get change_request_url(@change_request), as: :json
    assert_response :success
  end

  test "should update change_request" do
    patch change_request_url(@change_request), params: { change_request: { business_id: @change_request.business_id, description: @change_request.description, title: @change_request.title } }, as: :json
    assert_response 200
  end

  test "should destroy change_request" do
    assert_difference('ChangeRequest.count', -1) do
      delete change_request_url(@change_request), as: :json
    end

    assert_response 204
  end
end
