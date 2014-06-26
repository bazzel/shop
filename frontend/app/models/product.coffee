`import DS from 'ember-data';`

Product = DS.Model.extend
  title: DS.attr('string')
  description: DS.attr('string')
  amount: DS.attr('integer')
  imageUrl: DS.attr('string')
  rating: DS.attr('integer')
  reviewCount: DS.attr('integer')

Product.reopenClass
  FIXTURES: [
    id: 1
    title: 'First Product'
    description: 'See more snippets like this online store item at Bootsnipp - http://bootsnipp.com.'
    amount: 24.99
    imageUrl: 'http://placehold.it/320x150'
    rating: 5
    reviewCount: 15
  ,
    id: 2
    title: 'Second Product'
    description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
    amount: 64.99
    imageUrl: 'http://placehold.it/320x150'
    rating: 4
    reviewCount: 26
  ,
    id: 3
    title: 'Third Product'
    description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
    amount: 74.99
    imageUrl: 'http://placehold.it/320x150'
    rating: 4
    reviewCount: 31
  ,
    id: 4
    title: 'Fourth Product'
    description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
    amount: 84.99
    imageUrl: 'http://placehold.it/320x150'
    rating: 3
    reviewCount: 6
  ,
    id: 5
    title: 'Fifth Product'
    description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
    amount: 94.99
    imageUrl: 'http://placehold.it/320x150'
    rating: 4
    reviewCount: 18
  ]

`export default Product;`
