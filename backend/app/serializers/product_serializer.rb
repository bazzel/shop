class ProductSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :amount, :image_url, :rating, :review_count
end
