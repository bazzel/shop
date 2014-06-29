class Api::ProductsController < ApplicationController
  respond_to :json

  def index
    render json: Product.includes(:reviews)
  end

  def show
    render json: Product.find(params[:id])
  end
end
