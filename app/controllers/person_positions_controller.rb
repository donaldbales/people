class PersonPositionsController < ApplicationController
  before_action :set_person_position, only: [:show, :edit, :update, :destroy]

  # GET /person_positions
  # GET /person_positions.json
  def index
    @person_positions = PersonPosition.all
  end

  # GET /person_positions/1
  # GET /person_positions/1.json
  def show
  end

  # GET /person_positions/new
  def new
    @person_position = PersonPosition.new
  end

  # GET /person_positions/1/edit
  def edit
  end

  # POST /person_positions
  # POST /person_positions.json
  def create
    @person_position = PersonPosition.new(person_position_params)

    respond_to do |format|
      if @person_position.save
        format.html { redirect_to @person_position, notice: 'Person position was successfully created.' }
        format.json { render :show, status: :created, location: @person_position }
      else
        format.html { render :new }
        format.json { render json: @person_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /person_positions/1
  # PATCH/PUT /person_positions/1.json
  def update
    respond_to do |format|
      if @person_position.update(person_position_params)
        format.html { redirect_to @person_position, notice: 'Person position was successfully updated.' }
        format.json { render :show, status: :ok, location: @person_position }
      else
        format.html { render :edit }
        format.json { render json: @person_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /person_positions/1
  # DELETE /person_positions/1.json
  def destroy
    @person_position.destroy
    respond_to do |format|
      format.html { redirect_to person_positions_url, notice: 'Person position was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person_position
      @person_position = PersonPosition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_position_params
      params.require(:person_position).permit(:person_id, :position_id, :active_datetime, :inactive_datetime)
    end
end
