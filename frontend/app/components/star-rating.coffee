`import Ember from 'ember';`

StarRating = Ember.Component.extend
  tagName: 'span'
  starred: (->
    [0...@get('starCount')]
  ).property('starCount')
  unstarred: (->
    [0...(5-@get('starCount'))]
  ).property('starCount')

`export default StarRating;`
