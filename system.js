const System = require('systemic');
const { join } = require('path');

module.exports = () => new System({ name: 'service-systemic-showcase' })
	.bootstrap(join(__dirname, 'components'));
