/**
 * Mocking client-server processing
 */
import _bases from './bases_equipes.json'

const TIMEOUT = 100

export default {
  getBases(cb, timeout) {
    //setTimeout(() => cb(_bases), timeout || TIMEOUT)
    console.log(JSON.stringify(_bases));
    cb(_bases)
  }
}
