class AchivementsController < ApplicationController
  before_action :set_achivement, only: %i[ show edit update destroy ]

  # GET /achivements or /achivements.json
  def index
    @achivements = Achivement.all
  end

  # GET /achivements/1 or /achivements/1.json
  def show
  end

  # GET /achivements/new
  def new
    @achivement = Achivement.new
  end

  # GET /achivements/1/edit
  def edit
  end

  # POST /achivements or /achivements.json
  def create
    @achivement = Achivement.new(achivement_params)

    respond_to do |format|
      if @achivement.save
        format.html { redirect_to achivement_url(@achivement), notice: "Achivement was successfully created." }
        format.json { render :show, status: :created, location: @achivement }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @achivement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /achivements/1 or /achivements/1.json
  def update
    respond_to do |format|
      if @achivement.update(achivement_params)
        format.html { redirect_to achivement_url(@achivement), notice: "Achivement was successfully updated." }
        format.json { render :show, status: :ok, location: @achivement }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @achivement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /achivements/1 or /achivements/1.json
  def destroy
    @achivement.destroy

    respond_to do |format|
      format.html { redirect_to achivements_url, notice: "Achivement was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_achivement
      @achivement = Achivement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def achivement_params
      params.require(:achivement).permit(:man_of_series, :person, :player_id)
    end
end
