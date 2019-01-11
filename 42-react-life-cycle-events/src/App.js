import React, { Component } from "react";
import logo from "./logo.svg";
import "./App.css";

class App extends Component {
  state = {
    messages: []
  };

  handleLoad = () => {
    fetch("http://fetch-message-in-the-bottle.herokuapp.com/api/v2/messages")
      .then(r => r.json())
      .then(messages => {
        this.setState({ messages });
      });
  };

  render() {
    return (
      <div className="App">
        <h1 onClick={this.handleLoad}>Load data</h1>
        {this.state.messages.map(m => (
          <p key={m.id}>{m.message}</p>
        ))}
      </div>
    );
  }
}

export default App;
