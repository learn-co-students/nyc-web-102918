import gamesData from './gamesData'

const defaultState = {
    teams: gamesData.teams,
    selectedPlayer: null,
    players: []
}
function reducer(state=defaultState, action){
  switch (action.type) {
    case "SELECT_PLAYER":
      return {...state, selectedPlayer: action.payload}
    case "UNSELECT_PLAYER":
      return {...state, selectedPlayer: null}
      break;
    default:
      return state

  }
}

export default reducer
