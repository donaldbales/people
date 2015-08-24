class PersonLocationsController < ApplicationController
  before_action :set_person_location, only: [:show, :edit, :update, :destroy]

  # GET /person_locations
  # GET /person_locations.json
  def index
    @person_locations = PersonLocation.all
  end

  # GET /person_locations/1
  # GET /person_locations/1.json
  def show
  end

  # GET /person_locations/new
  def new
    @person_location = PersonLocation.new
  end

  # GET /person_locations/1/edit
  def edit
  end

  # POST /person_locations
  # POST /person_locations.json
  def create
    @person_location = PersonLocation.new(person_location_params)

    respond_to do |format|
      if @person_location.save
        format.html { redirect_to @person_location, notice: 'Person location was successfully created.' }
        format.json { render :show, status: :created, location: @person_location }
      else
        format.html { render :new }
        format.json { render json: @person_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /person_locations/1
  # PATCH/PUT /person_locations/1.json
  def update
    respond_to do |format|
      if @person_location.update(person_location_params)
        format.html { redirect_to @person_location, notice: 'Person location was successfully updated.' }
        format.json { render :show, status: :ok, location: @person_location }
      else
        format.html { render :edit }
        format.json { render json: @person_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /person_locations/1
  # DELETE /person_locations/1.json
  def destroy
    @person_location.destroy
    respond_to do |format|
      format.html { redirect_to person_locations_url, notice: 'Person location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person_location
      @person_location = PersonLocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_location_params
      params.require(:person_location).permit(:person_id, :location_id, :active_datetime, :inactive_datetime)
    end
end
