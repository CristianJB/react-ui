/**
 * Created by Avell on 11/08/2016.
 */
import React, { Component, PropTypes } from 'react'
import { bindActionCreators } from 'redux'
import {connect } from 'react-redux'
import { selectEquipe } from '../actions'
import DropDownMenu from 'material-ui/DropDownMenu';
import MenuItem from 'material-ui/MenuItem';
import { getSelectedEquipe,getEquipes,getSelectedBase} from '../reducers/bases'

class MenuEquipes extends Component {

    constructor(props) {
        super(props)
        this.handleChange = this.handleChange.bind(this)
    }

    handleChange = (event, index, value) => this.props.selectEquipe({id_equipe: value});

    render() {
        const {base, id} = this.props

        return (
            <DropDownMenu value={id} onChange={this.handleChange}>
                <MenuItem
                    key={0}
                    value={0}
                    primaryText={"Selecione a equipe"}
                />
                {base.map(equipe =>
                    <MenuItem
                        key={equipe}
                        value={equipe}
                        primaryText={"Equipe " + equipe.toString()}
                    />

                )}
            </DropDownMenu>
        )
    }
}

function mapStateToProps(state) {
    return {
        base: getEquipes(state.bases, getSelectedBase(state.bases)),
        id: getSelectedEquipe(state.bases)
    }
}

export default connect(
    mapStateToProps,
    { selectEquipe }
)(MenuEquipes)
