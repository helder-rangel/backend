class Api::V1::CarrinhoComprasController < ApplicationController
  before_action :authenticate_api_user!
  before_action :set_carrinho_compra, only: [:show, :update, :destroy]

  # GET /carrinho_compras
  def index
    @carrinho_compras = current_api_user.carrinho_compra.all

    render json: @carrinho_compras
  end

  # GET /carrinho_compras/1
  def show
    render json: @carrinho_compra
  end

  # POST /carrinho_compras
  def create
    @carrinho_compra = current_api_user.carrinho_compra.new(carrinho_compra_params)

    if @carrinho_compra.save
      render json: @carrinho_compra, status: :created, location: @carrinho_compras
    else
      render json: @carrinho_compra.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /carrinho_compras/1
  def update
    if @carrinho_compra.update(carrinho_compra_params)
      render json: @carrinho_compra
    else
      render json: @carrinho_compra.errors, status: :unprocessable_entity
    end
  end

  # DELETE /carrinho_compras/1
  def destroy
    @carrinho_compra.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carrinho_compra
      @carrinho_compra = current_api_user.carrinho_compra.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def carrinho_compra_params
      params.require(:carrinho_compra).permit(:user_id, :produto_id)
    end
end
