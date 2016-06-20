class SculturesController < ApplicationController
  before_action :set_sculture, only: [:show, :edit, :update, :destroy]

  # GET /scultures
  # GET /scultures.json
  def index
    @scultures = Sculture.all
  end

  # GET /scultures/1
  # GET /scultures/1.json
  def show
  end

  # GET /scultures/new
  def new
    @sculture = Sculture.new
  end

  # GET /scultures/1/edit
  def edit
  end

  # POST /scultures
  # POST /scultures.json
  def create
    @sculture = Sculture.new(sculture_params)

    respond_to do |format|
      if @sculture.save
        format.html { redirect_to @sculture, notice: 'Sculture was successfully created.' }
        format.json { render :show, status: :created, location: @sculture }
      else
        format.html { render :new }
        format.json { render json: @sculture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scultures/1
  # PATCH/PUT /scultures/1.json
  def update
    respond_to do |format|
      if @sculture.update(sculture_params)
        format.html { redirect_to @sculture, notice: 'Sculture was successfully updated.' }
        format.json { render :show, status: :ok, location: @sculture }
      else
        format.html { render :edit }
        format.json { render json: @sculture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scultures/1
  # DELETE /scultures/1.json
  def destroy
    @sculture.destroy
    respond_to do |format|
      format.html { redirect_to scultures_url, notice: 'Sculture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sculture
      @sculture = Sculture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sculture_params
      params.require(:sculture).permit(:title, :technic, :dimentions, :year)
    end
end
