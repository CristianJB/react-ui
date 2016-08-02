/**
 * App entry point
 */

// Polyfill
import 'babel-polyfill';

// Libraries
import React from 'react';
import ReactDOM from 'react-dom';
import { Router, browserHistory } from 'react-router';

import injectTapEventPlugin from 'react-tap-event-plugin';
import Main from './app/Main'; // Our custom react component

// Routes
//import Routes from './common/components/Routes';

// Base styling
import './common/base.css';

// Needed for onTouchTap
// http://stackoverflow.com/a/34015469/988941
injectTapEventPlugin();

// ID of the DOM element to mount app on
const DOM_APP_EL_ID = 'app';

// Render the router
ReactDOM.render((
    <Main />
), document.getElementById(DOM_APP_EL_ID));

