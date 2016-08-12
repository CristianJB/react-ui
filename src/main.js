/**
 * App entry point
 */

// Polyfill
import 'babel-polyfill';
import React from 'react';
import ReactDOM from 'react-dom';
import { browserHistory } from 'react-router';
import { syncHistoryWithStore } from 'react-router-redux'

import injectTapEventPlugin from 'react-tap-event-plugin';
injectTapEventPlugin();


import Root from './common/containers/Root'
import configureStore from './common/store/configureStore'
import { getAllBases } from './common/actions'


const store = configureStore();
const history = syncHistoryWithStore(browserHistory, store);

/* inicia a store com as bases*/
store.dispatch(getAllBases());

ReactDOM.render(
    <Root store={store} history={history} />,
    document.getElementById('app')
);