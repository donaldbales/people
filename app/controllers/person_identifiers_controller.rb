class PersonIdentifiersController < ApplicationController
  before_action :set_person_identifier, only: [:show, :edit, :update, :destroy]

  # GET /person_identifiers
  # GET /person_identifiers.json
  def index
    @person_identifiers = PersonIdentifier.all
  end

  # GET /person_identifiers/1
  # GET /person_identifiers/1.json
  def show
  end

  # GET /person_identifiers/new
  def new
    @person_identifier = PersonIdentifier.new
  end

  # GET /person_identifiers/1/edit
  def edit
  end

  # POST /person_identifiers
  # POST /person_identifiers.json
  def create
    @person_identifier = PersonIdentifier.new(person_identifier_params)

    respond_to do |format|
      if @person_identifier.save
        format.html { redirect_to @person_identifier, notice: 'Person identifier was successfully created.' }
        format.json { render :show, status: :created, location: @person_identifier }
      else
        format.html { render :new }
        format.json { render json: @person_identifier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /person_identifiers/1
  # PATCH/PUT /person_identifiers/1.json
  def update
    respond_to do |format|
      if @person_identifier.update(person_identifier_params)
        format.html { redirect_to @person_identifier, notice: 'Person identifier was successfully updated.' }
        format.json { render :show, status: :ok, location: @person_identifier }
      else
        format.html { render :edit }
        format.json { render json: @person_identifier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /person_identifiers/1
  # DELETE /person_identifiers/1.json
  def destroy
    @person_identifier.destroy
    respond_to do |format|
      format.html { redirect_to person_identifiers_url, notice: 'Person identifier was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person_identifier
      @person_identifier = PersonIdentifier.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_identifier_params
      params.require(:person_identifier).permit(:person_id, :identifier_id, :active_datetime, :inactive_datetime)
    end
end
