class Api::V1::EntregasController < ApplicationController
  before_action :authenticate_api_user!
  before_action :set_entrega, only: [:show, :update, :destroy]

  # GET /entregas
  def index
    @entregas = current_api_user.entrega.all

    render json: @entregas
  end

  # GET /entregas/1
  def show
    render json: @entrega
  end

  # POST /entregas
  def create
    @entrega = current_api_user.entrega.new(entrega_params)

    if @entrega.save
      render json: @entrega, status: :created, location: @entregas
    else
      render json: @entrega.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /entregas/1
  def update
    if @entrega.update(entrega_params)
      render json: @entrega
    else
      render json: @entrega.errors, status: :unprocessable_entity
    end
  end

  # DELETE /entregas/1
  def destroy
    @entrega.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entrega
      @entrega = current_api_user.entrega.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def entrega_params
      params.require(:entrega).permit(:meio, :custo, :pedido_id, :endereco_id)
    end
end
