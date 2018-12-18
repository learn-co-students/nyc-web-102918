this.name = 'window object'
/************ Simple Function Call ***********************/

function whatIsThis() {
  console.log(this)
}

whatIsThis() //`this` will be the window

/********************************************************/


/************ Function called on an Object ***************/

const dog = {
  name: 'winfield',
  tricks: ['bark', 'tend to the sick', 'jump', 'give paw'],
  bark: function () {
    console.log(`${this.name} says WOOF!!!`, 'THIS IS ', this)
  },
  listTricks: function() {
    console.log('THIS INSIDE OF listTricks ', this)
    this.tricks.forEach(function forEachCb(trick) {
      console.log(`${this.name} knows how to ${trick}`)
    })
  },
  listTricksDIY: function(callbackFn) {
    console.log('THIS INSIDE OF listTricks ', this)
    for (let i = 0; i < this.tricks.length; i++) {
      const currentTrick = this.tricks[i]
      callbackFn(currentTrick, i, this.tricks)
    }
  }
}

const alsoBark = dog.bark //create another pointer to our fn

console.log('IS alsoBark === dog.bark', alsoBark === dog.bark)

alsoBark() //`this` points to the window object

dog.listTricks() //`this` points to dog

/********************************************************/


/************ Bind Call Apply ****************************/

const person = {
  name: 'dumbledore',
  spells: ['disappear', 'fly', 'curse'],
  castSpells: function () {
    console.log(`This inside of castSpells is `, this)
    // this.spells.forEach(function(spell) {
    //   console.log(`${this.name} is casting ${spell}`)
    // }.bind(this))
    this.spells.forEach(castSpell.bind(this))
  }
}

function castSpell(spell) {
  console.log(`${this.name} is casting ${spell}`)
}

function rainbow() {
  console.log(`${this.name} started a rainbow`)
}

const boundRainbow = rainbow.bind({ name: 'lucky the leprechaun' })

function nameFoods(food1, food2, food3) {
  console.log(`${this.name} likes to eat ${food1}, ${food2}, ${food3}`)
}

nameFoods.call({ name: 'Iron Chef Bobby Flay' }, 'tacos', 'sauce', 'pumpkin') //call is expecting comma separated args

nameFoods.apply({ name: 'Iron Chef Bobby Flay' }, ['tacos', 'sauce', 'pumpkin']) //apply is expecting an array of args


/********************************************************/


/************ Arrow Functions ****************************/

const vibhu = () => console.log(this)

const book = {
  whatThis: this,
  name: 'beef: the book™',
  topics: ['beef', 'foo bar', 'books'],
  listTopics: function() {
    console.log(this.name)
    this.topics.forEach((topic) => {
      console.log(`${this.name} is about ${topic}`)
    })
  }
}


/********************************************************/

/************ Function Called with New Keyword ***********/
//inside a constructor fn, this will be the newly created object

function CreatePerson(name) {
  // `this` inside a constructor is the newly created object {}
  this.name = name
  // new object.name = name argument
}

const guy = new CreatePerson('Guy Fieri')



/********************************************************/
