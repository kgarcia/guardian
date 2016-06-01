class ParroquiaController < ApplicationController
  before_action :set_parroquium, only: [:show, :edit, :update, :destroy]

  # GET /parroquia
  # GET /parroquia.json
  def index
    @parroquia = Parroquium.all
    @municipios = Municipio.all
  end

  # GET /parroquia/1
  # GET /parroquia/1.json
  def show
    @municipios = Municipio.all
  end

  # GET /parroquia/new
  def new
    @parroquium = Parroquium.new
    @municipios = Municipio.all
  end

  # GET /parroquia/1/edit
  def edit
  end

  # POST /parroquia
  # POST /parroquia.json
  def create
    @parroquium = Parroquium.new(parroquium_params)

    respond_to do |format|
      if @parroquium.save
        format.html { redirect_to @parroquium, notice: 'Parroquium was successfully created.' }
        format.json { render :show, status: :created, location: @parroquium }
      else
        format.html { render :new }
        format.json { render json: @parroquium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parroquia/1
  # PATCH/PUT /parroquia/1.json
  def update
    respond_to do |format|
      if @parroquium.update(parroquium_params)
        format.html { redirect_to @parroquium, notice: 'Parroquium was successfully updated.' }
        format.json { render :show, status: :ok, location: @parroquium }
      else
        format.html { render :edit }
        format.json { render json: @parroquium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parroquia/1
  # DELETE /parroquia/1.json
  def destroy
    @parroquium.destroy
    respond_to do |format|
      format.html { redirect_to parroquia_url, notice: 'Parroquium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parroquium
      @parroquium = Parroquium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parroquium_params
      params.require(:parroquium).permit(:nombre, :municipio_id)
    end
end
