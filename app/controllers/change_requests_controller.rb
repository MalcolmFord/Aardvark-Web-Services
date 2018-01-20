class ChangeRequestsController < ApplicationController
  before_action :set_change_request, only: [:show, :update, :destroy]

  # GET /change_requests
  def index
    @change_requests = ChangeRequest.all

    render json: @change_requests
  end

  # GET /change_requests/1
  def show
    render json: @change_request
  end

  # POST /change_requests
  def create
    @change_request = ChangeRequest.new(change_request_params)

    if @change_request.save
      render json: @change_request, status: :created, location: @change_request
    else
      render json: @change_request.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /change_requests/1
  def update
    if @change_request.update(change_request_params)
      render json: @change_request
    else
      render json: @change_request.errors, status: :unprocessable_entity
    end
  end

  # DELETE /change_requests/1
  def destroy
    @change_request.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_change_request
      @change_request = ChangeRequest.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def change_request_params
      params.require(:change_request).permit(:title, :description, :business_id)
    end
end
