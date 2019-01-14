import React, { Fragment } from 'react'
import MoreButton from '../components/MoreButton'
import Sushi from '../components/Sushi'

const SushiContainer = (props) => {
  return (
    <Fragment>
      <div className="belt">
        {
          props.sushis.map( (sushi, index) => {
            return <Sushi key={index} {...sushi} eatSushi={props.eatSushi} />
          })
        }
        <MoreButton showMore={props.showMore} />
      </div>
    </Fragment>
  )
}

export default SushiContainer
