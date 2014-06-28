class Api::ReviewsController < ApplicationController
  respond_to :json

  def index
    render json: Review.find(params[:ids])
  end
end
