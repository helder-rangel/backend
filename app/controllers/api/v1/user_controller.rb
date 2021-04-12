class Api::V1::UserController < ApplicationController
  before_action :authenticate_api_user!
    # GET /produtos
  def index
    
    @user = User.all
    
    render json: @user
    
  end

  def show
    render json: @user
  end
end