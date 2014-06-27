`import Ember from 'ember';`

IndexRoute = Ember.Route.extend
  redirect: ->
    @transitionTo 'products'

`export default IndexRoute;`
