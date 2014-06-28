class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :description, :user, :created_at, :rating
end
