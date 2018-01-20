class PaymentPlansController < ApplicationController
  before_action :set_payment_plan, only: [:show, :update, :destroy]

  # GET /payment_plans
  def index
    @payment_plans = PaymentPlan.all

    render json: @payment_plans
  end

  # GET /payment_plans/1
  def show
    render json: @payment_plan
  end

  # POST /payment_plans
  def create
    @payment_plan = PaymentPlan.new(payment_plan_params)

    if @payment_plan.save
      render json: @payment_plan, status: :created, location: @payment_plan
    else
      render json: @payment_plan.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /payment_plans/1
  def update
    if @payment_plan.update(payment_plan_params)
      render json: @payment_plan
    else
      render json: @payment_plan.errors, status: :unprocessable_entity
    end
  end

  # DELETE /payment_plans/1
  def destroy
    @payment_plan.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment_plan
      @payment_plan = PaymentPlan.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def payment_plan_params
      params.require(:payment_plan).permit(:title, :description, :starting_date)
    end
end
