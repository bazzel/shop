`import Ember from 'ember';`

ProductController = Ember.ObjectController.extend
  newRating: 0
  actions:
    toggleAdding: ->
      @toggleProperty('isAddingReview')
      return false
    createReview: ->
      attrs =
        product: @get('model')
        description: @get('newDescription')
        rating: @get('newRating')
        user: @get('newUser')
      review = @store.createRecord 'review', attrs
      review.save().then =>
        @get('reviews').unshiftObject(review)
        @toggleProperty('isAddingReview')

`export default ProductController;`
