class Api::ReviewsController < ApplicationController
  respond_to :json

  def index
    render json: Review.find(params[:ids])
  end

  def create
    render json: Review.create(review)
  end

  private
  def review
    params[:review].permit(:description, :rating, :user, :product_id)
  end
end
