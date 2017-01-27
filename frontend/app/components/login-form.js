import Ember from 'ember';

const { service } = Ember.inject;

export default Ember.Component.extend({
  session: service('session'),

  actions: {
    authenticate(){
      let { identification, password } = this.getProperties('identification', 'password');
      return this.get('session').authenticate('authenticator:devise', identification, password)
        .catch((reason) => {
          this.set('errorMessage', reason.error);
        });
    }
  }
});
