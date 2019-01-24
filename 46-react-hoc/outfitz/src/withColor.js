import React from 'react'

function withColor(MyComponent){
  return class ColorHOC extends React.Component {

    render(){
      // return <AttirePicker />
      // console.log("FROM HOC", this.props)
      return (
        <div style={{backgroundColor: "red"}}>
          <MyComponent {...this.props}/>
        </div>
      )
    }

  }

  // return (props) => {

  //  return (
  //      <div style={{backgroundColor: "red"}}>
  //        <MyComponent {...props}/>
  //      </div>
  //    )
  // }
}

export default withColor