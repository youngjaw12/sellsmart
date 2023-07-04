class SellerspagesController < ApplicationController
  before_action :set_sellerspage, only: %i[ show edit update destroy ]

  # GET /sellerspages or /sellerspages.json
  def index
    @sellerspages = Sellerspage.all
  end

  # GET /sellerspages/1 or /sellerspages/1.json
  def show
  end

  # GET /sellerspages/new
  def new
    @sellerspage = Sellerspage.new
  end

  # GET /sellerspages/1/edit
  def edit
  end

  # POST /sellerspages or /sellerspages.json
  def create
    @sellerspage = Sellerspage.new(sellerspage_params)

    respond_to do |format|
      if @sellerspage.save
        format.html { redirect_to sellerspage_url(@sellerspage), notice: "Sellerspage was successfully created." }
        format.json { render :show, status: :created, location: @sellerspage }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sellerspage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sellerspages/1 or /sellerspages/1.json
  def update
    respond_to do |format|
      if @sellerspage.update(sellerspage_params)
        format.html { redirect_to sellerspage_url(@sellerspage), notice: "Sellerspage was successfully updated." }
        format.json { render :show, status: :ok, location: @sellerspage }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sellerspage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sellerspages/1 or /sellerspages/1.json
  def destroy
    @sellerspage.destroy

    respond_to do |format|
      format.html { redirect_to sellerspages_url, notice: "Sellerspage was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sellerspage
      @sellerspage = Sellerspage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sellerspage_params
      params.require(:sellerspage).permit(:sellers_name, :phone_number, :location, :profile_photo, :page_photo, :sellers_bio)
    end
end
