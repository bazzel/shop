# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.destroy_all

100.times do
  Product.new.tap do |product|
    product.title = Faker::Lorem.word
    product.description = Faker::Lorem.paragraphs.join('\n')
    product.amount = rand(0.00..250.00).round(2)
    image_id = rand(1..10)

    product.small_image_url = 'http://lorempixel.com/320/150/food/%d' % image_id
    product.large_image_url = 'http://lorempixel.com/800/300/food/%d' % image_id

    rand(0..10).times do
      product.reviews << Review.new.tap do |review|
        review.description = Faker::Lorem.paragraphs.join('\n')
        review.rating = rand(0..5)
        review.user = Faker::Name.name
        review.created_at = rand(0..100).days.ago
      end
    end

    product.save
  end

end
