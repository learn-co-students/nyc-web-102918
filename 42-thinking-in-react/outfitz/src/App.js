import './App.css';
import React, { Component } from "react"
import data from "./data"
import FormComponent from './FormComponent'
import AttirePicker from './AttirePicker'

class App extends Component {

	// state = {
	// 	shirt: [],
	// 	pants: [],
	// 	shoes: []
	// }

	state = data

	addAttire = (type, url) => {

		// if (type === "shirt"){
		// 	this.setState({
		// 		shirt: [...this.state.shirt, url]
		// 	})
		// } else if (type === "pants"){
		// 	this.setState({
		// 		pants: [...this.state.pants, url]
		// 	})
		// } else if (type === "shoes"){
		// 	this.setState({
		// 		shoes: [...this.state.shoes, url]
		// 	})
		// }

		this.setState({
			[type]: [...this.state[type], url]
		})

	}

	render() {

		// console.log(this.state)


		return (
			<div >
				<FormComponent addAttire={this.addAttire} />
				<AttirePicker attireArray={this.state.shirt} />
				<AttirePicker attireArray={this.state.pants} />
				<AttirePicker attireArray={this.state.shoes} />
			</div>
		);
	}
}

export default App;
