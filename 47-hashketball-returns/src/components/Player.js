import React from 'react'
import {connect} from 'react-redux'
import {unselectPlayer} from '../actions/index.js'

const Player = ({ player, selectPlayer, unselectPlayer }) => {
  return (
    <div>
      <div onClick={() => selectPlayer(player)}>
        <p>{player.name}</p>
      </div>
      <button onClick={unselectPlayer}>unselect </button>
    </div>
  )
}

const mapDispatchToProps = (dispatch) => {
  return {
    selectPlayer: (player) => dispatch({type: "SELECT_PLAYER", payload: player}),
    unselectPlayer: () => dispatch(unselectPlayer())
  }
}

export default connect(null, mapDispatchToProps)(Player)
