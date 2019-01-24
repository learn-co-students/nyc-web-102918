import React from 'react'

function withAds(Component) {

  return class AdHOC extends React.Component{

    state = {
      clicks: 0,
      showAd: false,
      timeRemaining: 5
    }

    changeClick = () => {
      if (this.state.clicks === 2) {
        this.startTimer()
        this.setState({
          clicks: 0,
          showAd: true
        })
      } else {
        this.setState({
          clicks: this.state.clicks + 1
        })
      }
    }

    startTimer = () => {
      this.timer = setInterval(() => {
        if (this.state.timeRemaining > 0){
          this.setState({ timeRemaining: this.state.timeRemaining - 1})
        } else {
          clearInterval(this.timer)
        }
      }, 1000)
    }

    closeAd = () => {
      this.setState({
        showAd: false,
        timeRemaining: 5
      })
    }

    render(){
      return (
        this.state.showAd ?
          <div>
            <iframe title="advertisement" height="250px" width="425px" src="https://www.youtube.com/embed/a8XC4H84rMU?autoplay=1" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
            <button disabled={this.state.timeRemaining > 0} onClick={this.closeAd}> Close {this.state.timeRemaining > 0 ? `in ${this.state.timeRemaining} second(s)` : null} </button>
          </div>
        :
          <div onClick={this.changeClick}>
            <Component {...this.props}/>
          </div>
      )
    }
  }
}

export default withAds