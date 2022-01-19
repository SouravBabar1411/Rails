class CollageteachersController < ApplicationController
  before_action :set_collageteacher, only: %i[ show edit update destroy ]

  # GET /collageteachers or /collageteachers.json
  def index
    @collageteachers = Collageteacher.all
  end

  # GET /collageteachers/1 or /collageteachers/1.json
  def show
  end

  # GET /collageteachers/new
  def new
    @collageteacher = Collageteacher.new
  end

  # GET /collageteachers/1/edit
  def edit
  end

  # POST /collageteachers or /collageteachers.json
  def create
    @collageteacher = Collageteacher.new(collageteacher_params)

    respond_to do |format|
      if @collageteacher.save
        format.html { redirect_to collageteacher_url(@collageteacher), notice: "Collageteacher was successfully created." }
        format.json { render :show, status: :created, location: @collageteacher }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @collageteacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /collageteachers/1 or /collageteachers/1.json
  def update
    respond_to do |format|
      if @collageteacher.update(collageteacher_params)
        format.html { redirect_to collageteacher_url(@collageteacher), notice: "Collageteacher was successfully updated." }
        format.json { render :show, status: :ok, location: @collageteacher }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @collageteacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /collageteachers/1 or /collageteachers/1.json
  def destroy
    @collageteacher.destroy

    respond_to do |format|
      format.html { redirect_to collageteachers_url, notice: "Collageteacher was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_collageteacher
      @collageteacher = Collageteacher.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def collageteacher_params
      params.require(:collageteacher).permit(:fname, :lname, :mno, :subjectName, :qulification, :experience, :email, :adress, :postalcode)
    end
end
