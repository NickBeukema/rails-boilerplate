import JSONAPIAdapter from 'ember-data/adapters/json-api';
import config from '../config/environment';
import DataAdapterMixin from 'ember-simple-auth/mixins/data-adapter-mixin';

export default JSONAPIAdapter.extend(DataAdapterMixin, {
  namespace: 'api/v1',
  authorizer: 'authorizer:devise',
  host: config.API_HOST,
});
