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
    product.amount = 10
    product.image_url = 'http://placehold.it/320x150'
    product.rating = 4
    product.review_count = 16

    product.save
  end

end
