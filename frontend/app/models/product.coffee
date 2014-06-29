`import DS from 'ember-data';`

Product = DS.Model.extend
  title: DS.attr()
  description: DS.attr()
  amount: DS.attr()
  smallImageUrl: DS.attr()
  largeImageUrl: DS.attr()
  reviews: DS.hasMany('review',
    async: yes
  )
  reviewCount: (->
    # this.get('reviews.length') invokes a GET request
    # which we don't need to only get the length
    # https://github.com/emberjs/data/issues/586#issuecomment-39774122
    @get('_data.reviews.length')
  ).property('reviews.length')

  # Better to calculate this server side to avoid
  # large amount of requests when showing products page?
  rating: (->
    reviews = @get('reviews')
    count = reviews.get('length')

    return 0 if count is 0

    sum = 0

    reviews.forEach (review) ->
      rating = review.get('rating')
      sum = sum + rating

    Math.round(sum / count)
  ).property('reviews.@each')

`export default Product;`
