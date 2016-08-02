/**
 * In this file, we create a React component
 * which incorporates components providedby material-ui.
 */
import React, {Component} from 'react';
import {Tabs, Tab} from 'material-ui/Tabs';
// From https://github.com/oliviertassinari/react-swipeable-views
//import SwipeableViews from 'react-swipeable-views';

import {deepOrange500} from 'material-ui/styles/colors';
//import FlatButton from 'material-ui/FlatButton';
import getMuiTheme from 'material-ui/styles/getMuiTheme';
import MuiThemeProvider from 'material-ui/styles/MuiThemeProvider';

const styles = {
    container: {
        //textAlign: 'top',
        paddingTop: 200,
    },
    headline: {
        fontSize: 24,
        paddingTop: 16,
        marginBottom: 12,
        fontWeight: 400,
    },
};

const muiTheme = getMuiTheme({
    palette: {
        accent1Color: deepOrange500,
    },
});

export default class App extends Component {
    constructor(props,context) {
        super(props,context);
        this.state = {
            slideIndex: 0,
        };
    }

// /*
//     handleChange = (value) => {
//         this.setState({
//             slideIndex: value,
//         });
//     };
// */

//onChange={this.handleChange}
    render() {

        return(
        <MuiThemeProvider muiTheme={muiTheme}>
                {/*<div style={styles.container}>*/}
                <Tabs
                    value={this.state.slideIndex}
                >

                    <Tab label="CURTO PRAZO" value={0}>
                        <div>
                            <h2 style={styles.headline}>Mapa</h2>
                            <p>
                                aqui vai o mapa !!!
                            </p>
                        </div>
                    </Tab>
                    <Tab label="MÉDIO PRAZO" value={1}>
                        <div>
                            <h2 style={styles.headline}>Aqui vai a interface para médio prazo</h2>
                        </div>
                    </Tab>
                    <Tab label="LONGO PRAZO" value={2}>
                        <div>
                            <h2 style={styles.headline}>Aqui vai a interface para longo prazo</h2>
                        </div>
                    </Tab>
                </Tabs>
                {/*</div>*/}
        </MuiThemeProvider>
        );
    }
}
