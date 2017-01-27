import Ember from 'ember';

const { service } = Ember.inject;

export default Ember.Component.extend({
  session: service('session'),
  currentUser: service('current-user'),
  mobileNavIsShowing: false,

  actions: {
    logout() {
      this.get('session').invalidate();
    },
    toggleMobileNav() {
      this.toggleProperty('mobileNavIsShowing');
      this.$('#navbarSupportedContent').slideToggle();
    },
  }

});
