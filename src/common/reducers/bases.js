import { combineReducers } from 'redux'
import { RECEIVE_BASES, ADD_TO_MAP } from '../constants/ActionTypes'


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
      const { baseId } = action
      if (baseId) {
        return Object.assign({}, state, {
          [baseId]: bases(state[baseId], action)
        })
      }
      return state
  }
}

function visibleIds(state = [], action) {
  switch (action.type) {
    case RECEIVE_BASES:
      return action.bases.map(base=> base.id)
    default:
      return state
  }
}

export default combineReducers({
  byId,
  visibleIds
})

export function getBase(state, id) {
  return state.byId[id]
}

export function getVisibleBases(state) {
  return state.visibleIds.map(id => getBase(state, id))
}
