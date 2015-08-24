class PersonOrganizationsController < ApplicationController
  before_action :set_person_organization, only: [:show, :edit, :update, :destroy]

  # GET /person_organizations
  # GET /person_organizations.json
  def index
    @person_organizations = PersonOrganization.all
  end

  # GET /person_organizations/1
  # GET /person_organizations/1.json
  def show
  end

  # GET /person_organizations/new
  def new
    @person_organization = PersonOrganization.new
  end

  # GET /person_organizations/1/edit
  def edit
  end

  # POST /person_organizations
  # POST /person_organizations.json
  def create
    @person_organization = PersonOrganization.new(person_organization_params)

    respond_to do |format|
      if @person_organization.save
        format.html { redirect_to @person_organization, notice: 'Person organization was successfully created.' }
        format.json { render :show, status: :created, location: @person_organization }
      else
        format.html { render :new }
        format.json { render json: @person_organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /person_organizations/1
  # PATCH/PUT /person_organizations/1.json
  def update
    respond_to do |format|
      if @person_organization.update(person_organization_params)
        format.html { redirect_to @person_organization, notice: 'Person organization was successfully updated.' }
        format.json { render :show, status: :ok, location: @person_organization }
      else
        format.html { render :edit }
        format.json { render json: @person_organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /person_organizations/1
  # DELETE /person_organizations/1.json
  def destroy
    @person_organization.destroy
    respond_to do |format|
      format.html { redirect_to person_organizations_url, notice: 'Person organization was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person_organization
      @person_organization = PersonOrganization.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_organization_params
      params.require(:person_organization).permit(:person_id, :organization_id, :active_datetime, :inactive_datetime)
    end
end
