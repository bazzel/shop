`import Ember from 'ember';`

Router = Ember.Router.extend
  location: FrontendENV.locationType

Router.map ->
  @resource 'products'
  @resource 'product',
    path: '/products/:product_id'

`export default Router;`
