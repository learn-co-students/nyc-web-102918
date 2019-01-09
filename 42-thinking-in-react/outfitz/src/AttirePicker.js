import React from "react"

class AttirePicker extends React.Component {

	state = {
		currentIndex: 0
	}

	// incrementIndex = () => {
	// 	this.setState({
	// 		currentIndex: this.state.currentIndex + 1
	// 	})
	// }

	// decrementIndex = () => {
	// 	this.setState({
	// 		currentIndex: this.state.currentIndex - 1
	// 	})
	// }

	changeIndex = (value) => {
		this.setState({
			currentIndex: value
		})
	}
	render(){

		const attires = this.props.attireArray.map(attireURL => {
			return <img className="image-container" src={attireURL}/>
		})

		return(
			<div>
				<button onClick={() => this.changeIndex(this.state.currentIndex - 1) }> Back </button>
				<img className="image-container" src={this.props.attireArray[this.state.currentIndex]}/>
				<button onClick={() => this.changeIndex(this.state.currentIndex + 1) } > Forward </button>
			</div>
		)
	}
}

export default AttirePicker