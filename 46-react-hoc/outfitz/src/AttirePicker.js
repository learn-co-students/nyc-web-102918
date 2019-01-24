import React from "react"
import withAds from "./withAds"

class AttirePicker extends React.Component {

  state = {
    currentIndex: 0
  }

  changeIndex = (value) => {
    if (value >= 0 && value < this.props.attireArray.length){
      this.setState({
        currentIndex: value
      })  
    } else if (value === this.props.attireArray.length) {
      this.setState({
        currentIndex: 0
      })
    } else if (value === -1) {
      this.setState({
        currentIndex: this.props.attireArray.length - 1
      })
    }
  }
  render(){

    return(
      <div>
        <button onClick={() => this.changeIndex(this.state.currentIndex - 1) }> Back </button>
        <img className="image-container" src={this.props.attireArray[this.state.currentIndex]}/>
        <button onClick={() => this.changeIndex(this.state.currentIndex + 1) } > Forward </button>
      </div>
    )
  }
}


// const ColoredAttirePicker = withAds(AttirePicker)

// export default ColoredAttirePicker


export default withAds(AttirePicker)