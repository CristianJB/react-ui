//import * as ActionTypes from '../actions'
import { routerReducer as routing } from 'react-router-redux'
import { combineReducers } from 'redux'
import bases, * as fromBases from './bases'
import ordens, * as fromOrdens from './ordens'

const rootReducer = combineReducers({
    routing,
    bases,
    ordens
})

function getBase(state, id) {
    return fromBases.getBase(state.bases, id)
}

export default rootReducer
