import loader from '../api/loader'
import * as types from '../constants/ActionTypes'

function receiveBases(bases) {
  console.log(JSON.stringify(bases));
  return {
    type: types.RECEIVE_BASES,
    bases: bases
  }
}

export function getAllBases() {
  return dispatch => {
    loader.getBases(bases => {
      dispatch(receiveBases(bases))
    })
  }
}
