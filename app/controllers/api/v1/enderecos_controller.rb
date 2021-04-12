class Api::V1::EnderecosController < ApplicationController

  before_action :authenticate_api_user!
  before_action :set_endereco, only: [:show, :update, :destroy]

  # GET /enderecos
  def index
    @enderecos = current_api_user.enderecos.all

    render json: @enderecos
  end

  # GET /enderecos/1
  def show
    render json: @endereco
  end

  # POST /enderecos
  def create
    @endereco = current_api_user.enderecos.new(endereco_params)

    if @endereco.save
      render json: @endereco, status: :created, location: api_endereco_url(@endereco)  
    else
      render json: @endereco.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /enderecos/1
  def update
    if @endereco.update(endereco_params)
      render json: @endereco
    else
      render json: @endereco.errors, status: :unprocessable_entity
    end
  end

  # DELETE /enderecos/1
  def destroy
    @endereco.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_endereco
      @endereco = current_api_user.enderecos.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def endereco_params
      params.require(:endereco).permit(:rua, :numero, :complemento, :cidade, :estado, :bairro, :cep)
    end
end
