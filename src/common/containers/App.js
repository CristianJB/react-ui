import React, {Component} from 'react';
import {Tabs, Tab} from 'material-ui/Tabs';
import MenuDropDown from '../components/MenuDropDown';
import SeletorData from '../components/SeletorData'
import {Grid, Row, Col} from 'react-flexbox-grid/lib';
import MainMap from '../components/MainMap';
import MenuBases from './MenuBases'
import MenuEquipes from "./MenuEquipes"

const styles = {
    container: {
        textAlign: 'center',
        paddingTop: 200,
    },
    headline: {
        fontSize: 24,
        paddingTop: 16,
        marginBottom: 12,
        fontWeight: 400,
    },
    tabs:{
        height: 2,
    },
};

export default class App extends Component {
    constructor(props,context) {
        super(props,context);
        this.state = {
            slideIndex: "0",
        };
    }

    handleChange = (value) => {
        this.setState({
            slideIndex: value,
        });
    };

    render() {
        const { bases } = this.props
        return(
            <Tabs
                style={styles.tabs}
                value={this.state.slideIndex}
                onChange={this.handleChange}
            >
            <Tab label="CURTO PRAZO" value="0">
                <div>
                    <Grid fluid>
                        <Row>
                            <Col>
                                {/*Menu de bases*/}
                                {/*<MenuDropDown items={this.props.menuBasesItems} />*/}
                                <MenuBases/>
                            </Col>
                            <Col>
                                {/*Menu de Equipes*/}
                                {/*<MenuDropDown items={this.props.menuEquipesItems} />*/}
                                <MenuEquipes/>
                            </Col>
                            <Col xs={6} md={3}>
                                <SeletorData/>
                            </Col>
                        </Row>
                        <Row>
                            <MainMap/>
                        </Row>
                    </Grid>
                </div>
            </Tab>
            <Tab label="MÉDIO PRAZO" value="1">
                <div>
                    <h2 style={styles.headline}>Aqui vai a interface para médio prazo</h2>
                    <p>
                        Aqui vai a interface para médio prazo !!!
                    </p>
                </div>
            </Tab>
            <Tab label="LONGO PRAZO" value="2">
                <div>
                    <h2 style={styles.headline}>Aqui vai a interface para longo prazo</h2>
                </div>
            </Tab>
        </Tabs>
        );
    }
}
