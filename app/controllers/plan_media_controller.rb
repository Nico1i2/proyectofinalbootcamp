class PlanMediaController < ApplicationController
  before_action :set_plan_medium, only: [:show, :edit, :update, :destroy]

  # GET /plan_media
  # GET /plan_media.json
  def index
    @plan_media = PlanMedium.all
  end

  # GET /plan_media/1
  # GET /plan_media/1.json
  def show
  end

  # GET /plan_media/new
  def new
    @plan_medium = PlanMedium.new
    @brand = Brand.all
  end

  # GET /plan_media/1/edit
  def edit
    @brand = Brand.all
  end

  # POST /plan_media
  # POST /plan_media.json
  def create
    @plan_medium = PlanMedium.new(plan_medium_params)
    @plan_medium.brand = Brand.find(params[:product][:brand])
    @plan_medium.save

      if @plan_medium.save
        redirect_to @plan_medium, notice: 'Plan medium was successfully created.'
      else
        @brand = PlanMedium.all
        render :new
      end
  end

  # PATCH/PUT /plan_media/1
  # PATCH/PUT /plan_media/1.json
  def update
    respond_to do |format|
      if @plan_medium.update(plan_medium_params)
        format.html { redirect_to @plan_medium, notice: 'Plan medium was successfully updated.' }
        format.json { render :show, status: :ok, location: @plan_medium }
      else
        format.html { render :edit }
        format.json { render json: @plan_medium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plan_media/1
  # DELETE /plan_media/1.json
  def destroy
    @plan_medium.destroy
    respond_to do |format|
      format.html { redirect_to plan_media_url, notice: 'Plan medium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plan_medium
      @plan_medium = PlanMedium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plan_medium_params
      params.require(:plan_medium).permit(:description)
    end
end
