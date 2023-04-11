class InfomationsController < ApplicationController
  before_action :set_infomation, only: %i[ show edit update destroy ]

  # GET /infomations or /infomations.json
  def index
    @infomations = Infomation.all
  end

  # GET /infomations/1 or /infomations/1.json
  def show
  end

  # GET /infomations/new
  def new
    @infomation = Infomation.new
  end

  # GET /infomations/1/edit
  def edit
  end

  # POST /infomations or /infomations.json
  def create
    @infomation = Infomation.new(infomation_params)

    respond_to do |format|
      if @infomation.save
        format.html { redirect_to infomation_url(@infomation), notice: "Infomation was successfully created." }
        format.json { render :show, status: :created, location: @infomation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @infomation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /infomations/1 or /infomations/1.json
  def update
    respond_to do |format|
      if @infomation.update(infomation_params)
        format.html { redirect_to infomation_url(@infomation), notice: "Infomation was successfully updated." }
        format.json { render :show, status: :ok, location: @infomation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @infomation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /infomations/1 or /infomations/1.json
  def destroy
    @infomation.destroy

    respond_to do |format|
      format.html { redirect_to infomations_url, notice: "Infomation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_infomation
      @infomation = Infomation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def infomation_params
      params.require(:infomation).permit(:customer_name, :date_of_birth, :email, :phone_number, :address)
    end
end
