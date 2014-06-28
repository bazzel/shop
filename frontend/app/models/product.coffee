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
    @get('reviews.length')
  ).property('reviews.length')

`export default Product;`
