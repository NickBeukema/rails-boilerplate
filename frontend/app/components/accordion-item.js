import Ember from 'ember';

export default Ember.Component.extend({
  title: null,
  defaultOpen: false,
  linkText: null,
  hasLinkText: Ember.computed.notEmpty('linkText'),
  errorCount: 0,
  hasErrors: Ember.computed.gt('errorCount', 0),

  actions: {
    toggleAccordion() {
      let el = this.$('.app-accordion-item');
      let others = this.$().parent('.app-accordion-list').find('.app-accordion-item').filter((index, e) => {
        return e !== el[0];
      });

      el.slideToggle();

      others.each((index, e) => {
        Ember.$(e).slideUp();
      });

    },
    clickLinkAction() {
      this.sendAction('clickLinkAction');
    }
  }
});
