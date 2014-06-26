`import Ember from 'ember';`

IndexRoute = Ember.Route.extend
  beforeModel: ->
    @transitionTo 'products'

`export default IndexRoute;`
