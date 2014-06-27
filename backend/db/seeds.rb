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
    product.image_url = 'http://lorempixel.com/320/150/food/%d' % rand(1..10)
    product.rating = rand(0..5)
    product.review_count = rand(0..30)

    product.save
  end

end
