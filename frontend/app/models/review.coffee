`import DS from 'ember-data';`

Review = DS.Model.extend
  description: DS.attr()
  rating: DS.attr()
  user: DS.attr()
  createdAt: DS.attr()


`export default Review;`
