class PersonIndustrialHygieneJobsController < ApplicationController
  before_action :set_person_industrial_hygiene_job, only: [:show, :edit, :update, :destroy]

  # GET /person_industrial_hygiene_jobs
  # GET /person_industrial_hygiene_jobs.json
  def index
    @person_industrial_hygiene_jobs = PersonIndustrialHygieneJob.all
  end

  # GET /person_industrial_hygiene_jobs/1
  # GET /person_industrial_hygiene_jobs/1.json
  def show
  end

  # GET /person_industrial_hygiene_jobs/new
  def new
    @person_industrial_hygiene_job = PersonIndustrialHygieneJob.new
  end

  # GET /person_industrial_hygiene_jobs/1/edit
  def edit
  end

  # POST /person_industrial_hygiene_jobs
  # POST /person_industrial_hygiene_jobs.json
  def create
    @person_industrial_hygiene_job = PersonIndustrialHygieneJob.new(person_industrial_hygiene_job_params)

    respond_to do |format|
      if @person_industrial_hygiene_job.save
        format.html { redirect_to @person_industrial_hygiene_job, notice: 'Person industrial hygiene job was successfully created.' }
        format.json { render :show, status: :created, location: @person_industrial_hygiene_job }
      else
        format.html { render :new }
        format.json { render json: @person_industrial_hygiene_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /person_industrial_hygiene_jobs/1
  # PATCH/PUT /person_industrial_hygiene_jobs/1.json
  def update
    respond_to do |format|
      if @person_industrial_hygiene_job.update(person_industrial_hygiene_job_params)
        format.html { redirect_to @person_industrial_hygiene_job, notice: 'Person industrial hygiene job was successfully updated.' }
        format.json { render :show, status: :ok, location: @person_industrial_hygiene_job }
      else
        format.html { render :edit }
        format.json { render json: @person_industrial_hygiene_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /person_industrial_hygiene_jobs/1
  # DELETE /person_industrial_hygiene_jobs/1.json
  def destroy
    @person_industrial_hygiene_job.destroy
    respond_to do |format|
      format.html { redirect_to person_industrial_hygiene_jobs_url, notice: 'Person industrial hygiene job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person_industrial_hygiene_job
      @person_industrial_hygiene_job = PersonIndustrialHygieneJob.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_industrial_hygiene_job_params
      params.require(:person_industrial_hygiene_job).permit(:person_id, :industrial_hygiene_job_id, :active_datetime, :inactive_datetime)
    end
end
