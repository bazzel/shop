class Review < ActiveRecord::Base
  belongs_to :product
  validates :description, :rating, :user, presence: true
end
