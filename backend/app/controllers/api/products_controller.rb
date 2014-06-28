class Api::ProductsController < ApplicationController
  respond_to :json

  def index
    render json: Product.all
  end

  def show
    render json: Product.find(params[:id])
  end
end
