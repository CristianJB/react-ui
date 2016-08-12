import React from 'react'
import { Route } from 'react-router'
import App from './common/containers/App'

import {deepOrange500} from 'material-ui/styles/colors';
import getMuiTheme from 'material-ui/styles/getMuiTheme';
import MuiThemeProvider from 'material-ui/styles/MuiThemeProvider';
import './common/themes/base.css';
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


export default (
  <Route path="/" component={MainApp}>
  </Route>
)
