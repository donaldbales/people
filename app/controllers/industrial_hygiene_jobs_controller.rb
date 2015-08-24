class IndustrialHygieneJobsController < ApplicationController
  before_action :set_industrial_hygiene_job, only: [:show, :edit, :update, :destroy]

  # GET /industrial_hygiene_jobs
  # GET /industrial_hygiene_jobs.json
  def index
    @industrial_hygiene_jobs = IndustrialHygieneJob.all
  end

  # GET /industrial_hygiene_jobs/1
  # GET /industrial_hygiene_jobs/1.json
  def show
  end

  # GET /industrial_hygiene_jobs/new
  def new
    @industrial_hygiene_job = IndustrialHygieneJob.new
  end

  # GET /industrial_hygiene_jobs/1/edit
  def edit
  end

  # POST /industrial_hygiene_jobs
  # POST /industrial_hygiene_jobs.json
  def create
    @industrial_hygiene_job = IndustrialHygieneJob.new(industrial_hygiene_job_params)

    respond_to do |format|
      if @industrial_hygiene_job.save
        format.html { redirect_to @industrial_hygiene_job, notice: 'Industrial hygiene job was successfully created.' }
        format.json { render :show, status: :created, location: @industrial_hygiene_job }
      else
        format.html { render :new }
        format.json { render json: @industrial_hygiene_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /industrial_hygiene_jobs/1
  # PATCH/PUT /industrial_hygiene_jobs/1.json
  def update
    respond_to do |format|
      if @industrial_hygiene_job.update(industrial_hygiene_job_params)
        format.html { redirect_to @industrial_hygiene_job, notice: 'Industrial hygiene job was successfully updated.' }
        format.json { render :show, status: :ok, location: @industrial_hygiene_job }
      else
        format.html { render :edit }
        format.json { render json: @industrial_hygiene_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /industrial_hygiene_jobs/1
  # DELETE /industrial_hygiene_jobs/1.json
  def destroy
    @industrial_hygiene_job.destroy
    respond_to do |format|
      format.html { redirect_to industrial_hygiene_jobs_url, notice: 'Industrial hygiene job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_industrial_hygiene_job
      @industrial_hygiene_job = IndustrialHygieneJob.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def industrial_hygiene_job_params
      params.require(:industrial_hygiene_job).permit(:industrial_hygiene_job_type_id, :parent_id, :code, :description, :active_datetime, :inactive_datetime, :level, :context_id, :context_code, :context_description)
    end
end
