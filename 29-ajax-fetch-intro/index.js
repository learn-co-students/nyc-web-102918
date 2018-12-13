function sleep(n) {
  let i = 0
  while(i < (12 ** 8) * n) {
    i++
  }
}

console.log('Starting the sleep function')
// sleep(10)
console.log('Wow that sleep function took forever to run. 1 Star 🌟')

document.getElementById('click-button').addEventListener('click', console.log)

let ronsQuote = ''

const myHotdogPromise = fetch('http://ron-swanson-quotes.herokuapp.com/v2/quotes', { method: 'GET' })
  .then(function(responseObject) {
    console.log(responseObject)
    if (responseObject.ok) {
      return responseObject.json()
    } else {
      throw responseObject
    }
  })
  .then(function(parsedQuote) {
    console.log(parsedQuote)
    ronsQuote = parsedQuote
    return 'hotdog'
  })
  .then(function(lastPromiseVal) {
    console.log(lastPromiseVal)
  })
  .catch(function(responseObject) {
    console.warn(responseObject)
  })

console.log('WHAT WILL RUN FIRST????')

try {
  const popcorn = 'popped'
  popcorn = 'really popped'
} catch (e) {
  console.log('here is ur error ', e)
}


console.log('%c first', 'color: red')
console.log('%c second', 'color: purple')

fetch('https://dog.ceo/api/breeds/image/random', { method: 'GET' })
  .then((responseObject) => {
    if (responseObject.ok) {
      return responseObject.json()
    }
  })
  .then((dogData) => {
    console.log(dogData)
    const newImg = document.createElement('img')
    newImg.src = dogData.message
    // document.getElementById('quotes').appendChild(newImg)

    document.getElementById('quotes').innerHTML += `<div>
      <img src=${dogData.message} >
    </div>`
  })



const dogPromise = fetch('https://dog.ceo/api/breeds/image/random/4', { method: 'GET' })


console.log(dogPromise)

let dogData;

dogPromise
  .then(function(respObj) {
  console.log(respObj)
  return respObj.json()
})
  .then(function(parsedDogData) {
  dogData = parsedDogData
  console.log('PARSED DOG DATA, ', parsedDogData)
  return 'POTATOES'
})
  .then(
    (function() { console.log('RUNNING OUR LAST THEN') })()
  )
  .then(napoleonTots)

function napoleonTots() {
  console.log("TINA, EAT UR FOOD!")
}


document.body.addEventListener('click', logEvent)

function logEvent(e) {
  console.log(e.target)
}
