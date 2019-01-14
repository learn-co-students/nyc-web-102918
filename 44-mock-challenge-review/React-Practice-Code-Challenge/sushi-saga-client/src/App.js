import React, { Component } from 'react';
import SushiContainer from './containers/SushiContainer';
import Table from './containers/Table';

// Endpoint!
const API = "http://localhost:3000/sushis"

class App extends Component {

  state = {
    sushis: [],
    startIdx: 0,
    endIdx: 4,
    money: 100
  }

  componentDidMount() {
    fetch(API)
    .then(r => r.json())
    .then(sushis => this.setState({ sushis }))
  }

  showMore = () => {
    // this.setState({
    //   startIdx: this.state.startIdx + 4,
    //   endIdx: this.state.endIdx + 4
    // })

    // if your state relies on your previous state,
    // use a callback function instead of an object
    this.setState( prevState => {
      return {
        startIdx: prevState.startIdx + 4,
        endIdx: prevState.endIdx + 4
      }
    })
  }

  eatSushi = (sushiId) => {
    // To avoid directly mutating state:
    // make a copy of the array of sushis
    // this will still hold the references to the ORIGINAL sushi objects
    let sushisCopy = [...this.state.sushis]
    // find the index of the sushi in the array copy
    const sushiIdx = sushisCopy.findIndex(sushi => sushi.id === sushiId)
    // make a copy of the sushi
    const sushi = {...sushisCopy[sushiIdx]}
    // set eaten attribute for the sushi copy
    sushi.eaten = true
    // replace the sushi in the array copy with our new copy
    sushisCopy[sushiIdx] = sushi
    // uncomment out these lines to see the differences
    // console.log('state', this.state.sushis)
    // console.log('copy', sushisCopy)

    const price = sushi.price

    if (price > this.state.money) {
      alert("You don't have enough money! :(")
    } else {
      this.setState( prevState => {
        return {
          sushis: sushisCopy,
          money: prevState.money - price
        }
      })
    }
  }

  render() {
    return (
      <div className="app">
        <SushiContainer
          sushis={this.state.sushis.slice(this.state.startIdx, this.state.endIdx)}
          showMore={this.showMore}
          eatSushi={this.eatSushi}
        />
        <Table
          eatenSushis={this.state.sushis.filter(sushi => sushi.eaten)}
          money={this.state.money}
        />
      </div>
    );
  }
}

export default App;
