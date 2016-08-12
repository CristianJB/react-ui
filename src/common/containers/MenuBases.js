/**
 * Created by Avell on 11/08/2016.
 */
import React, { Component, PropTypes } from 'react'
import { connect } from 'react-redux'
//import { selecionaBase } from '../actions'
import DropDownMenu from 'material-ui/DropDownMenu';
import MenuItem from 'material-ui/MenuItem';
import { getVisibleBases} from '../reducers/bases'

class MenuBases extends Component {
    render() {
        const { bases } = this.props
        return (
        <DropDownMenu>
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
        bases: getVisibleBases(state.bases)
    }
}

export default connect(
    mapStateToProps
)(MenuBases)
