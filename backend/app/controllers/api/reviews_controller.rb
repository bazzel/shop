class Api::ReviewsController < ApplicationController
  respond_to :json

  def index
    render json: Review.find(params[:ids])
  end

  def create
    review = Review.new(review_params)

    if review.save
      render json: Review.create(review)
    else
      render json: { errors: review.errors }, status: :unprocessable_entity
    end
  end

  private
  def review_params
    params[:review].permit(:description, :rating, :user, :product_id)
  end
end
