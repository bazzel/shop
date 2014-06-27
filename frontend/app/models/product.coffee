`import DS from 'ember-data';`

Product = DS.Model.extend
  title: DS.attr()
  description: DS.attr()
  amount: DS.attr()
  imageUrl: DS.attr()
  rating: DS.attr()
  reviewCount: DS.attr()

`export default Product;`
