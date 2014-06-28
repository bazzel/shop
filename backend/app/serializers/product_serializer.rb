class ProductSerializer < ActiveModel::Serializer
  embed :ids

  attributes :id,
    :title,
    :description,
    :amount,
    :small_image_url,
    :large_image_url
  has_many :reviews
end
