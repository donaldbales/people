class IndustrialHygieneJobTypesController < ApplicationController
  before_action :set_industrial_hygiene_job_type, only: [:show, :edit, :update, :destroy]

  # GET /industrial_hygiene_job_types
  # GET /industrial_hygiene_job_types.json
  def index
    @industrial_hygiene_job_types = IndustrialHygieneJobType.all
  end

  # GET /industrial_hygiene_job_types/1
  # GET /industrial_hygiene_job_types/1.json
  def show
  end

  # GET /industrial_hygiene_job_types/new
  def new
    @industrial_hygiene_job_type = IndustrialHygieneJobType.new
  end

  # GET /industrial_hygiene_job_types/1/edit
  def edit
  end

  # POST /industrial_hygiene_job_types
  # POST /industrial_hygiene_job_types.json
  def create
    @industrial_hygiene_job_type = IndustrialHygieneJobType.new(industrial_hygiene_job_type_params)

    respond_to do |format|
      if @industrial_hygiene_job_type.save
        format.html { redirect_to @industrial_hygiene_job_type, notice: 'Industrial hygiene job type was successfully created.' }
        format.json { render :show, status: :created, location: @industrial_hygiene_job_type }
      else
        format.html { render :new }
        format.json { render json: @industrial_hygiene_job_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /industrial_hygiene_job_types/1
  # PATCH/PUT /industrial_hygiene_job_types/1.json
  def update
    respond_to do |format|
      if @industrial_hygiene_job_type.update(industrial_hygiene_job_type_params)
        format.html { redirect_to @industrial_hygiene_job_type, notice: 'Industrial hygiene job type was successfully updated.' }
        format.json { render :show, status: :ok, location: @industrial_hygiene_job_type }
      else
        format.html { render :edit }
        format.json { render json: @industrial_hygiene_job_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /industrial_hygiene_job_types/1
  # DELETE /industrial_hygiene_job_types/1.json
  def destroy
    @industrial_hygiene_job_type.destroy
    respond_to do |format|
      format.html { redirect_to industrial_hygiene_job_types_url, notice: 'Industrial hygiene job type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_industrial_hygiene_job_type
      @industrial_hygiene_job_type = IndustrialHygieneJobType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def industrial_hygiene_job_type_params
      params.require(:industrial_hygiene_job_type).permit(:code, :description, :active_datetime, :inactive_datetime)
    end
end
