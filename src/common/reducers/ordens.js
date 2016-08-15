import { combineReducers } from 'redux'
import { RECEIVE_ORDEM } from '../constants/ActionTypes'

function byId(state = {}, action) {
  switch (action.type) {
    case RECEIVE_ORDEM:
      return Object.assign({},
        state,
        action.ordens.reduce((obj, ordem) => {
          obj[ordem.id] = ordem
          return obj
        }, {})
      )
    default:
      return state
  }
}

function visibleIds(state = [], action) {
  switch (action.type) {
    case RECEIVE_ORDEM:
      return action.ordens.map(ordem => ordem.id)
    default:
      return state
  }
}

export default combineReducers({
  byId,
  visibleIds
})

export function getOrdem(state, id) {
  return state.byId[id]
}

export function getVisibleOrdens(state) {
  return state.visibleIds.map(id => getOrdem(state, id))
}

