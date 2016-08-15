/**
 * Created by Avell on 11/08/2016.
 */
import React, { Component, PropTypes } from 'react'
import { bindActionCreators } from 'redux'
import {connect } from 'react-redux'
import { selectBase } from '../actions'
import DropDownMenu from 'material-ui/DropDownMenu';
import MenuItem from 'material-ui/MenuItem';
import { getVisibleBases,getSelectedBase} from '../reducers/bases'

class MenuBases extends Component {

    constructor(props) {
        super(props)
        this.handleChange = this.handleChange.bind(this)
    }

    handleChange = (event, index, value) => this.props.selectBase({id:value});

    render() {
        const { bases, id} = this.props
        return (
        <DropDownMenu value={id} onChange={this.handleChange}>
            {bases.map(base =>
                <MenuItem
                    key={base.id}
                    value={base.id}
                    primaryText={base.nome}
                />

            )}
        </DropDownMenu>
        )
    }
}

function mapStateToProps(state) {
    return {
        bases: getVisibleBases(state.bases),
        id: getSelectedBase(state.bases)
    }
}

export default connect(
    mapStateToProps,
    { selectBase }
)(MenuBases)
