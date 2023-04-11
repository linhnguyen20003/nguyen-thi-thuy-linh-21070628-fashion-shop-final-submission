class CustomerInfomationsController < ApplicationController
  before_action :set_customer_infomation, only: %i[ show edit update destroy ]

  # GET /customer_infomations or /customer_infomations.json
  def index
    @customer_infomations = CustomerInfomation.all
  end

  # GET /customer_infomations/1 or /customer_infomations/1.json
  def show
  end

  # GET /customer_infomations/new
  def new
    @customer_infomation = CustomerInfomation.new
  end

  # GET /customer_infomations/1/edit
  def edit
  end

  # POST /customer_infomations or /customer_infomations.json
  def create
    @customer_infomation = CustomerInfomation.new(customer_infomation_params)

    respond_to do |format|
      if @customer_infomation.save
        format.html { redirect_to customer_infomation_url(@customer_infomation), notice: "Customer infomation was successfully created." }
        format.json { render :show, status: :created, location: @customer_infomation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @customer_infomation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_infomations/1 or /customer_infomations/1.json
  def update
    respond_to do |format|
      if @customer_infomation.update(customer_infomation_params)
        format.html { redirect_to customer_infomation_url(@customer_infomation), notice: "Customer infomation was successfully updated." }
        format.json { render :show, status: :ok, location: @customer_infomation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @customer_infomation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_infomations/1 or /customer_infomations/1.json
  def destroy
    @customer_infomation.destroy

    respond_to do |format|
      format.html { redirect_to customer_infomations_url, notice: "Customer infomation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_infomation
      @customer_infomation = CustomerInfomation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def customer_infomation_params
      params.require(:customer_infomation).permit(:name, :date_of_birth, :gender, :email, :citizen_identification, :phone_number, :address)
    end
end
