class OrderInformationsController < ApplicationController
  before_action :set_order_information, only: %i[ show edit update destroy ]

  # GET /order_informations or /order_informations.json
  def index
    @order_informations = OrderInformation.all
  end

  # GET /order_informations/1 or /order_informations/1.json
  def show
  end

  # GET /order_informations/new
  def new
    @order_information = OrderInformation.new
  end

  # GET /order_informations/1/edit
  def edit
  end

  # POST /order_informations or /order_informations.json
  def create
    @order_information = OrderInformation.new(order_information_params)

    respond_to do |format|
      if @order_information.save
        format.html { redirect_to order_information_url(@order_information), notice: "Order information was successfully created." }
        format.json { render :show, status: :created, location: @order_information }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @order_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_informations/1 or /order_informations/1.json
  def update
    respond_to do |format|
      if @order_information.update(order_information_params)
        format.html { redirect_to order_information_url(@order_information), notice: "Order information was successfully updated." }
        format.json { render :show, status: :ok, location: @order_information }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @order_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_informations/1 or /order_informations/1.json
  def destroy
    @order_information.destroy

    respond_to do |format|
      format.html { redirect_to order_informations_url, notice: "Order information was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_information
      @order_information = OrderInformation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_information_params
      params.require(:order_information).permit(:order_status_code, :date_order_placed, :infomation_id)
    end
end
