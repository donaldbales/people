class GenderTypesController < ApplicationController
  before_action :set_gender_type, only: [:show, :edit, :update, :destroy]

  # GET /gender_types
  # GET /gender_types.json
  def index
    @gender_types = GenderType.all
  end

  # GET /gender_types/1
  # GET /gender_types/1.json
  def show
  end

  # GET /gender_types/new
  def new
    @gender_type = GenderType.new
  end

  # GET /gender_types/1/edit
  def edit
  end

  # POST /gender_types
  # POST /gender_types.json
  def create
    @gender_type = GenderType.new(gender_type_params)

    respond_to do |format|
      if @gender_type.save
        format.html { redirect_to @gender_type, notice: 'Gender type was successfully created.' }
        format.json { render :show, status: :created, location: @gender_type }
      else
        format.html { render :new }
        format.json { render json: @gender_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gender_types/1
  # PATCH/PUT /gender_types/1.json
  def update
    respond_to do |format|
      if @gender_type.update(gender_type_params)
        format.html { redirect_to @gender_type, notice: 'Gender type was successfully updated.' }
        format.json { render :show, status: :ok, location: @gender_type }
      else
        format.html { render :edit }
        format.json { render json: @gender_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gender_types/1
  # DELETE /gender_types/1.json
  def destroy
    @gender_type.destroy
    respond_to do |format|
      format.html { redirect_to gender_types_url, notice: 'Gender type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gender_type
      @gender_type = GenderType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gender_type_params
      params.require(:gender_type).permit(:code, :description, :active_datetime, :inactive_datetime)
    end
end
