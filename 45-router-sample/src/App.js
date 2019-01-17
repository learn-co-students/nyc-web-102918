import React, { Component } from "react";
import logo from "./logo.svg";
import "./App.css";
import { BrowserRouter as Router, Route, Link } from "react-router-dom";

const Home = props => <h1>Home</h1>;
const AboutUs = props => <h1>AboutUs</h1>;
const ShowFn = props => {
  console.log("Inside show page", props);
  return <h1>Information about product {props.match.params.id}</h1>;
};

// Component to used to log calls to the constructor method
// class Show extends React.Component {
//   constructor(props) {
//     super(props);
//     console.log("In constructor");
//   }

//   render() {
//     console.log("Inside show page", this.props);
//     return <h1>Information about product {this.props.match.params.id}</h1>;
//   }
// }

class App extends Component {
  // code to force re-render and compare `render` vs `component`
  // state = {
  //   counter: 0
  // };

  // componentDidMount() {
  //   setInterval(() => {
  //     this.setState(prevState => ({ counter: prevState + 1 }));
  //   }, 1000);
  // }
  render() {
    console.log("Rendering");
    return (
      <div className="App">
        <Router>
          <>
            <nav>
              <Link to="/">Home</Link>
              <Link to="/about">About us</Link>
              <Link to="/products/1">Product number 1</Link>
              <Link to="/products/2">Product number 1</Link>
            </nav>
            <Route path="/" exact component={Home} />
            <Route path="/about" exact component={AboutUs} />
            <Route
              path="/products/:id"
              component={props => <ShowFn {...props} />}
            />
          </>
        </Router>
      </div>
    );
  }
}

export default App;
