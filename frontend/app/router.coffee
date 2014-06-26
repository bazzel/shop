`import Ember from 'ember';`

Router = Ember.Router.extend
  location: FrontendENV.locationType

Router.map ->
  @route('products')

`export default Router;`
