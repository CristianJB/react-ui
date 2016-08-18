import { combineReducers } from 'redux'
import { RECEIVE_BASES, SELECT_BASE, SELECT_EQUIPE } from '../constants/ActionTypes'

const initialState = {
  id: 0,
  id_equipe: 0
}

function selectId(state = initialState, action) {
  switch (action.type) {
    case RECEIVE_BASES:
      return state
    case SELECT_BASE:
      return Object.assign({}, state, action.id, {"id_equipe": 0});
    case SELECT_EQUIPE:
      return Object.assign({}, state, action.id_equipe);
    default:
      return state
  }
}

function byId(state = {}, action) {
  switch (action.type) {
    case RECEIVE_BASES:
      return Object.assign({},
        state,
        action.bases.reduce((obj, base) => {
          obj[base.id] = base
          return obj
        }, {})
      )
    default:
      return state
  }
}

function visibleIds(state = [], action) {
  switch (action.type) {
    case RECEIVE_BASES:
      return action.bases.map(base => base.id)
    default:
      return state
  }
}

export default combineReducers({
  byId,
  visibleIds,
  selectId
})

export function getBase(state, id) {
  return state.byId[id]
}

export function getVisibleBases(state) {
  return state.visibleIds.map(id => getBase(state, id))
}

export function getSelectedBase(state) {
  return state.selectId.id;
}

export function getEquipes(state, id) {
  var obj = getBase(state,id);
  return obj.equipes;

}

export function getSelectedEquipe(state) {
  return state.selectId.id_equipe;
}
