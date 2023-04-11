class ProductInfomationsController < ApplicationController
  before_action :set_product_infomation, only: %i[ show edit update destroy ]

  # GET /product_infomations or /product_infomations.json
  def index
    @product_infomations = ProductInfomation.all
  end

  # GET /product_infomations/1 or /product_infomations/1.json
  def show
  end

  # GET /product_infomations/new
  def new
    @product_infomation = ProductInfomation.new
  end

  # GET /product_infomations/1/edit
  def edit
  end

  # POST /product_infomations or /product_infomations.json
  def create
    @product_infomation = ProductInfomation.new(product_infomation_params)

    respond_to do |format|
      if @product_infomation.save
        format.html { redirect_to product_infomation_url(@product_infomation), notice: "Product infomation was successfully created." }
        format.json { render :show, status: :created, location: @product_infomation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product_infomation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_infomations/1 or /product_infomations/1.json
  def update
    respond_to do |format|
      if @product_infomation.update(product_infomation_params)
        format.html { redirect_to product_infomation_url(@product_infomation), notice: "Product infomation was successfully updated." }
        format.json { render :show, status: :ok, location: @product_infomation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product_infomation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_infomations/1 or /product_infomations/1.json
  def destroy
    @product_infomation.destroy

    respond_to do |format|
      format.html { redirect_to product_infomations_url, notice: "Product infomation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_infomation
      @product_infomation = ProductInfomation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_infomation_params
      params.require(:product_infomation).permit(:name, :description, :size, :quantity, :price, :order_date)
    end
end
