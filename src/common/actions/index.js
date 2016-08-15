import loader from '../api/loader'
import * as types from '../constants/ActionTypes'

function receiveBases(_bases) {
  return {
    type: types.RECEIVE_BASES,
    bases: _bases
  }
}
export function getAllBases() {
  return dispatch => {
    loader.getBases(bases => {
      dispatch(receiveBases(bases))
    })
  }
}

function receiveOrdens(_ordens) {
  return {
    type: types.RECEIVE_ORDEM,
    ordens: _ordens
  }
}
export function getAllOrdens() {
  return dispatch => {
    loader.getOrdens(ordens => {
      dispatch(receiveOrdens(ordens))
    })
  }
}
function selectBaseUnsafe(baseId) {
  return {
    type: types.SELECT_BASE,
    id: baseId
  }
}

export function selectBase(baseId) {
  return (dispatch) => {
      dispatch(selectBaseUnsafe(baseId))
  }
}

function selectEquipeUnsafe(Id) {
  return {
    type: types.SELECT_EQUIPE,
    id_equipe: Id
  }
}

export function selectEquipe(Id) {
  return (dispatch) => {
    dispatch(selectEquipeUnsafe(Id))
  }
}


