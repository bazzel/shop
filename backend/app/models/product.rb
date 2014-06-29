class Product < ActiveRecord::Base
  has_many :reviews, -> { order(created_at: :desc) }, dependent: :destroy

  def rating
    return 0 if reviews.empty?

    reviews.inject(0) { |sum, n| sum + n.rating } / reviews.size
  end
end
