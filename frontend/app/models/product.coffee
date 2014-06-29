`import DS from 'ember-data';`

Product = DS.Model.extend
  title: DS.attr()
  description: DS.attr()
  amount: DS.attr()
  smallImageUrl: DS.attr()
  largeImageUrl: DS.attr()
  rating: DS.attr()
  reviews: DS.hasMany('review',
    async: yes
  )
  reviewCount: (->
    # this.get('reviews.length') invokes a GET request
    # which we don't need to only get the length
    # https://github.com/emberjs/data/issues/586#issuecomment-39774122
    @get('_data.reviews.length')
  ).property('reviews.length')

`export default Product;`
