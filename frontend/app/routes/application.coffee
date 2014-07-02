`import Ember from 'ember';`

ApplicationRoute = Ember.Route.extend
  beforeModel: ->
    @csrf.fetchToken()

`export default ApplicationRoute;`
