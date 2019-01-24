import React from 'react'
import withAds from './withAds'

class FormComponent extends React.Component {

  // constructor(){
  //  this.state = {
  //    attire: ""
  //  }
  // }


  state = {
    attireType: "shirt",
    attireURL: ""
  }

  handleChange = (event) => {
    this.setState({
      [event.target.name]: event.target.value
    })
  }

  handleClick = (event) => {
    this.props.addAttire(this.state.attireType, this.state.attireURL)

    this.setState({
      attireURL: ""
    })
  }

  render(){
    // console.log(this.props)
    return (
      <div>
        <select value={this.state.attireType} name="attireType" onChange={this.handleChange}>
          <option value="shirt">Shirt</option>
          <option value="pants">Pants</option>
          <option value="shoes">Shoes</option>
        </select>
        <input value={this.state.attireURL} onChange={this.handleChange} name="attireURL" type="text"/>
        <input onClick={this.handleClick} type="submit"/>
      </div>
    )
  }
}

export default withAds(FormComponent)