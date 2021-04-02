class Api::V1::PedidosController < ApplicationController

  before_action :authenticate_api_user!
  before_action :set_pedido, only: [:show, :update, :destroy]

  # GET /pedidos
  def index
    @pedidos = current_api_user.pedidos.all

    render json: @pedidos
  end

  # GET /pedidos/1
  def show
    render json: @pedido
  end

  # POST /pedidos
  def create
    @pedido = current_api_user.pedidos.new(pedido_params)

    if @pedido.save
      render json: @pedido, status: :created, location: api_pedido_url(@pedido) 
    else
      render json: @pedido.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pedidos/1
  def update
    if @pedido.update(pedido_params)
      render json: @pedido
    else
      render json: @pedido.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pedidos/1
  def destroy
    @pedido.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pedido
      @pedido = current_api_user.pedidos.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pedido_params
      params.require(:pedido).permit(:itens, :frete)
    end
end
