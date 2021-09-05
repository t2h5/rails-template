// By default, this pack is loaded for server-side rendering.
// It must expose react_ujs as `ReactRailsUJS` and prepare a require context.
var componentRequireContext = require.context('components', true);
// eslint-disable-next-line @typescript-eslint/no-var-requires
var ReactRailsUJS = require('react_ujs');
// eslint-disable-next-line react-hooks/rules-of-hooks
ReactRailsUJS.useContext(componentRequireContext);
