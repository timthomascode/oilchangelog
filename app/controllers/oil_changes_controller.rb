class OilChangesController < ApplicationController
  before_action :set_oil_change, only: [:show, :edit, :update, :destroy]
  before_action :require_login

  # GET /oil_changes
  # GET /oil_changes.json
  def index
    @oil_changes = OilChange.all
  end

  # GET /oil_changes/1
  # GET /oil_changes/1.json
  def show
  end

  # GET /oil_changes/new
  def new
    @oil_change = OilChange.new
  end

  # GET /oil_changes/1/edit
  def edit
  end

  # POST /oil_changes
  # POST /oil_changes.json
  def create
    @oil_change = OilChange.new(oil_change_params)

    respond_to do |format|
      if @oil_change.save
        format.html { redirect_to vehicle_path(params[:vehicle_id]), notice: 'Oil change was successfully created.' }
        format.json { render :show, status: :created, location: @oil_change }
      else
        format.html { render :new }
        format.json { render json: @oil_change.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oil_changes/1
  # PATCH/PUT /oil_changes/1.json
  def update
    respond_to do |format|
      if @oil_change.update(oil_change_params)
        format.html { redirect_to vehicle_path(params[:vehicle_id]), notice: 'Oil change was successfully updated.' }
        format.json { render :show, status: :ok, location: @oil_change }
      else
        format.html { render :edit }
        format.json { render json: @oil_change.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oil_changes/1
  # DELETE /oil_changes/1.json
  def destroy
    @oil_change.destroy
    respond_to do |format|
      format.html { redirect_to vehicle_path(params[:vehicle_id]), notice: 'Oil change was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oil_change
      @oil_change = current_user.vehicles.find(params[:vehicle_id]).oil_changes.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def oil_change_params
      params.require(:oil_change).permit(:vehicle_id, :date, :mileage, :oil_used, :notes)
    end
end
