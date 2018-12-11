console.log('%c Hello, World!', 'color: orange')

// DO NOT DO THIS:

document.getElementById('outer-node').children[0].children[0].children[0]


const outerNode = document.querySelector('#outer-node')
const internetMemeHeader = document.querySelector('#outer-node h1')

// find the div with an id of container
const container = document.querySelector('#container')

// need to iterate over array of imgs
dankMemes.forEach(function(memeUrlString) {
  // create a new img tag
  const newImgTag = document.createElement('img')
  //set the src of the new img tag to EACH img in the array
  newImgTag.src = memeUrlString
  // append the img tag to the container div
  container.appendChild(newImgTag)
})
