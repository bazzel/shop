`import DS from 'ember-data';`

Product = DS.Model.extend
  title: DS.attr('string')

Product.reopenClass
  FIXTURES: [
    id: 1
    title: 'First Product'
    description: 'See more snippets like this online store item at Bootsnipp - http://bootsnipp.com.'
    amount: 24.99
    imageUrl: 'http://placehold.it/320x150'
  ,
    id: 2
    title: 'Second Product'
    description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
    amount: 64.99
    imageUrl: 'http://placehold.it/320x150'
  ,
    id: 3
    title: 'Third Product'
    description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
    amount: 74.99
    imageUrl: 'http://placehold.it/320x150'
  ,
    id: 4
    title: 'Fourth Product'
    description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
    amount: 84.99
    imageUrl: 'http://placehold.it/320x150'
  ,
    id: 5
    title: 'Fifth Product'
    description: 'This is a short description. Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
    amount: 94.99
    imageUrl: 'http://placehold.it/320x150'
  ]

`export default Product;`
