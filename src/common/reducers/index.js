//import * as ActionTypes from '../actions'
import { routerReducer as routing } from 'react-router-redux'
import { combineReducers } from 'redux'
import bases, * as fromBases from './bases'

const rootReducer = combineReducers({
    routing,
    bases
})

function getBase(state, id) {
    return fromBases.getBase(state.bases, id)
}

export default rootReducer
