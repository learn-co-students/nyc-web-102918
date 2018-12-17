this.name = 'window object'
/************ Simple Function Call ***********************/

function iHateLaGuardia() {
  console.log(this.name)
}

iHateLaGuardia() // 'window object'

const button = document.getElementById('button')

button.addEventListener('click', function() {
  console.log(this) //button
})


// button.addEventListener('click', () => console.log(this)) //window



/********************************************************/


/************ Function called on an Object ***************/

const laptop = {
  name: 'macbook',
  color: 'silver',
  sayName: function() {
    console.log(`I am a ${this.color} ${this.name} computer`)
  }
}

laptop.sayName() // i am a silver macbook computer

const dog = {
  name: 'winfield',
  favSnacks: ['peanut butter', 'chicken', 'pizza', 'a whole turkey'],
  bark: function() {
    console.log(`My name is ${this.name} and i love 2 bark! WOOF WOOF!`)
  },
  listSnacks: function() {
    console.log(`THIS IN THE CONTEXT OF LIST SNACKS: `, this)
    this.favSnacks.forEach(function(snack) {
      console.log('THIS INSIDE OF THE FOREACH CALLBACK', this.name, snack)
    })
  },
  listSnacksNoForEach: function(callback) {
    console.log(`THIS IN THE CONTEXT OF LIST SNACKS: `, this)
    for (let i = 0; i < this.favSnacks.length; i++) {
      callback(this.favSnacks[i])
    }
  }
}

const alsoBark = dog.bark //creates another pointer to the dog.bark fn

alsoBark === dog.bark // true

dog.bark() //My name is winfield and i love 2 bark! WOOF WOOF!

const pencil = {
  color: 'blue',
  write: function() {
    console.log(`I am a ${this.color} pencil and i like 2 write`)
  }
}

pencil.write() // I am a blue pencil and i like 2 write

/********************************************************/


/************ Bind Call Apply ****************************/

const waterBottle = {
  name: 'hydro20',
  size: '10oz',
  fill: function() {
    console.log(`U r filling ${this.name} bottle`)
  }
}

function lunch(food1, food2) {
  console.log(`${this.name} is super duper hungry for ${food1} and ${food2}`)
}

const person = {
  name: 'randy savage'
}

const bound2BoneSaw = lunch.bind(person) //returns a BOUND copy of our fn

lunch.bind(person)('slim jim', 'baklava') // randy savage is super duper hungry for slim jim and baklava
bound2BoneSaw('slim jim', 'baklava') // randy savage is super duper hungry for slim jim and baklava

// both call and apply execute AND bind a function to an object
lunch.call(person, 'pizza', 'nachos')
lunch.apply(person, ['sushi', "flamin' hot cheetos™"])


const tiger = {
  name: 'sher khan',
  favSnacks: ['mogli', 'people'],
  listSnacks: function() {
    console.log('THIS IN THE CONTEXT OF tiger.listSnacks() ', this)
    this.favSnacks.forEach(function(snack) {
      console.log(`${this.name} is eating ${snack}`)
    }.bind(this)) //bind forEach's callback fn to tiger (this)
  },
  eatSingleSnack: function(snack) {
    console.log(`${this.name} is eating ${snack}`)
  },
  listSnacksAlt: function() {
    console.log('THIS IN THE CONTEXT OF tiger.listSnacks() ', this)
    this.favSnacks.forEach(this.eatSingleSnack.bind(this))
  }
}

/********************************************************/


/************ Arrow Functions ****************************/

const sayThis = () => console.log(this)

const library = {
  name: 'stonehenge library',
  books: ['harry potter', 'READMEs about JS', 'effective executive', 'MDN'],
  listBooks: function() {
    console.log(`THIS IS `, this)
    this.books.forEach((book) => {
      console.log(`${this.name} offers ${book}`)
    })
  }
}

/********************************************************/

/************ Function Called with New Keyword ***********/
//inside a constructor fn, this will be the newly created object

function Person(name, hobby) {
  // {} -> this will be the newly created object
  // { name: name, hobby: hobby }
  this.name = name
  this.hobby = hobby
  // return this -> { name: name, hobby: hobby }
}


const jimmy = new Person('jimmy', 'coding')



/********************************************************/
