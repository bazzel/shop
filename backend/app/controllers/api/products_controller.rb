class Api::ProductsController < ApplicationController
  respond_to :json

  def index
    render json: Product.all
  end
end
