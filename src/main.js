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

// Needed for onTouchTap
// http://stackoverflow.com/a/34015469/988941
injectTapEventPlugin();

import App from './common/containers/App';

// Routes
//import Routes from './common/components/Routes';

import {deepOrange500} from 'material-ui/styles/colors';
import getMuiTheme from 'material-ui/styles/getMuiTheme';
import MuiThemeProvider from 'material-ui/styles/MuiThemeProvider';


// Base styling
import './common/themes/base.css';


// ID of the DOM element to mount app on
const DOM_APP_EL_ID = 'app';

const muiTheme = getMuiTheme({
    palette: {
        accent1Color: deepOrange500,
    },
});


const MainApp = () => (
    <MuiThemeProvider muiTheme={muiTheme}>
        <App
            menuBasesItems={['Selecione a base','Santa Maria', 'Canoas']}
            menuEquipesItems={['Selecione a equipe','913', '931']}
        />
    </MuiThemeProvider>
);

// Render the router
ReactDOM.render((
    <MainApp />
), document.getElementById(DOM_APP_EL_ID));

