/**************** Lexical Scoping ************************/

const shirt = 'shaped like a t, which is why it is called a t-shirt'

function printShirt() {
  const shirt = 'undershirt'
  const pants = 'jeans'
  console.log(shirt, pants)
}

printShirt()

shirt

// pants

function outerHeight() {
  const height = 10
  const innerHeight = function() {
    const height = 'HOTDOG'
    const dino = 't-rex'
    console.log('HEIGHT IS: ', height)
  }
  return innerHeight
}

outerHeight()()


/*******************************************************/

/*******************JS Scopes***************************/
/*******************Global***************************/
const globalName = 'winfield'

/*******************Function***************************/

function pizza() {
  const toppings = 'olives, pineapple, pepperoni, anchovies, sprinkles'
}

pizza()

// toppings

/*******************Block***************************/

{
  const fish = 'salmon'
}

const o = { hello: 'world', hi: 'there' }

if (true) {
  const sneakers = 'jordans'
  console.log(sneakers)
}


/*******************************************************/

/************** Var Let Const *********************/

//var can be redeclared and reassigned AS MANY TIMES AS I WANT

var tomato = 'a nice tomato sauce'

tomato = 'sundried (are they actually dried in the sun🤔)'

var tomato = function() {
  console.log('o what??????')
}

// let can be reassigned BUT NOT REDECLARED

let pears = 'green and kinda mushy'

pears = 'a late summer fruit??????'

// let pears = 'not a winter fruit'

//const can neither be redeclared nor reassigned

const apple = 'a fall fruit (also a tech company lol but do not eat ur macbook)'

// apple = 'just a fruit'

// const apple = 'a tech giant'

// vars declared without var/let/const will become GLOBAL ¯\_(ツ)_/¯

function declareDriver() {
  driver = 'dale earnhardt jr'
}

// declareDriver()

// driver

/////////////****** HOISTING *******////////////

console.log(happy)

var happy = '🤠'

console.log(happy)

currentMood()

function currentMood() {
  console.log('🤔🧐🙄')
}

currentMood = 'DEF NOT A FUNCTION'

console.log(currentMood)

console.log(bueller)

var bueller = function() {
  console.log('BUUUEEEELLLLERRRRRR')
}

bueller()

let belt = 'Gucci'

function hoistVar() {
  console.log(name)
  if (true) {
    var name = 'jimmy'
  }
  console.log(name)
}

hoistVar()

//****** First Class Functions ******************//

const hamburger = function() {
  return 'cheese, nice'
}

const higherOrder = function(callback) {
  return callback()
}


console.log(higherOrder(hamburger))


/////////////////////////////////////////////////////////

function higherOrderJamesBond() {
  const movie = 'the ice palace one with Halle Berry'
  return function innerFn() {
    // debugger
    return `My favorite James Bond film is ${movie}`
  }
}

const badBondMovie = higherOrderJamesBond()

console.log(badBondMovie())


console.log(
  higherOrderJamesBond()()
)
