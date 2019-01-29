import React, { Component } from 'react';
import './App.css';
import gamesData from './gamesData'
import TeamList from './components/TeamList'
import PlayerDetails from './components/PlayerDetails'
import NavHeader from './components/Header'
import 'semantic-ui-css/semantic.min.css';
import {connect} from 'react-redux'


class App extends Component {
  // state = {
  //   teams: gamesData.teams,
  //   selectedPlayer: null
  // }

  // handleSelectPlayer = (player) => {
  //   this.setState({
  //     selectedPlayer: player
  //   })
  // }

  render() {

    console.log(this)
    return (
      <div className="App">
        <NavHeader />
        <TeamList />
        {!this.props.selectedPlayer ? <div> Click Player for Details </div> :
          <PlayerDetails selectedPlayer={this.props.selectedPlayer}/>}
      </div>
    );
  }
}

const mapStateToProps = (state) => {
  return {
    teams: state.teams,
    selectedPlayer: state.selectedPlayer
  }
}

const mapDispatchToProps = (dispatch) => {
  return {
    selectPlayer: (player) => dispatch({type: "SELECT_PLAYER", payload: player}),
    unselectPlayer: () => dispatch({type: "UNSELECT_PLAYER"})
  }
}

export default connect(mapStateToProps, mapDispatchToProps)(App);
