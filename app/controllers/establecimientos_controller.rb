class EstablecimientosController < ApplicationController
  before_action :set_establecimiento, only: [:show, :update, :destroy]

  # GET /establecimientos
  def index
    @establecimientos = Establecimiento.all

    render json: @establecimientos
  end

  # GET /establecimientos/1
  def show
    render json: @establecimiento
  end

  # POST /establecimientos
  def create
    @establecimiento = Establecimiento.new(establecimiento_params)

    if @establecimiento.save
      render json: @establecimiento, status: :created, location: @establecimiento
    else
      render json: @establecimiento.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /establecimientos/1
  def update
    if @establecimiento.update(establecimiento_params)
      render json: @establecimiento
    else
      render json: @establecimiento.errors, status: :unprocessable_entity
    end
  end

  # DELETE /establecimientos/1
  def destroy
    @establecimiento.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_establecimiento
      @establecimiento = Establecimiento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def establecimiento_params
      params.require(:establecimiento).permit(:nombre, :ciudad, :rbd, :direccion, :telefono, :email, :director)
    end
end
