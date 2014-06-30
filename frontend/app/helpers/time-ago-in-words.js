import Ember from 'ember';

// See:
// http://emberjs.com/guides/cookbook/user_interface_and_interaction/displaying_formatted_dates_with_moment_js/
// http://emberjs.com/guides/templates/writing-helpers/
export default Ember.Handlebars.makeBoundHelper(function(value) {
  return moment(value).fromNow();
});
