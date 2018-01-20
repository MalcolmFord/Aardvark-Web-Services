require 'test_helper'

class PaymentPlansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @payment_plan = payment_plans(:one)
  end

  test "should get index" do
    get payment_plans_url, as: :json
    assert_response :success
  end

  test "should create payment_plan" do
    assert_difference('PaymentPlan.count') do
      post payment_plans_url, params: { payment_plan: { description: @payment_plan.description, starting_date: @payment_plan.starting_date, title: @payment_plan.title } }, as: :json
    end

    assert_response 201
  end

  test "should show payment_plan" do
    get payment_plan_url(@payment_plan), as: :json
    assert_response :success
  end

  test "should update payment_plan" do
    patch payment_plan_url(@payment_plan), params: { payment_plan: { description: @payment_plan.description, starting_date: @payment_plan.starting_date, title: @payment_plan.title } }, as: :json
    assert_response 200
  end

  test "should destroy payment_plan" do
    assert_difference('PaymentPlan.count', -1) do
      delete payment_plan_url(@payment_plan), as: :json
    end

    assert_response 204
  end
end
