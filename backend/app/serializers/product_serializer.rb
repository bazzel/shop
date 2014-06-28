class ProductSerializer < ActiveModel::Serializer
  attributes :id,
    :title,
    :description,
    :amount,
    :small_image_url,
    :large_image_url,
    :rating,
    :review_count
end
