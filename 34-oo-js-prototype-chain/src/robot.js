// object literals

const mario = { name: 'mario', ability: 'plumber' }
const wario = { name: 'wario', ability: 'electrician' }
const waluigi = { name: 'waluigi', ability: 'being a tall villain' }

// factory function

function characterFactoryFunction(name, ability) {
  // return {
  //   name: name,
  //   ability: ability,
  //   walk: function() {
  //     console.log(`${this.name} is walkin'`)
  //   }
  // }
  return {
    name,
    ability,
    walk: function() {
      console.log(`${this.name} is walkin'`)
    }
  }
}

const toad = characterFactoryFunction('toad', 'strong, obnoxious voice')
const yoshi = characterFactoryFunction('yoshi', 'dinosaur')

// Object.create

const characterTemplate = {
  name: 'DEFAULT CHARACTER NAME',
  ability: 'DEFAULT CHARACTER ABILITY',
  walk: function() {
    console.log(`${this.name} likes to walk`)
  }
}

const ganondorf = Object.create(characterTemplate)
ganondorf.name = 'GANONDORF'
const batman = Object.create(characterTemplate)
batman.name = 'Batman'
batman.ability = 'brooding'

function objectCreateFactory(name, ability) {
  const newChar = Object.create(characterTemplate)
  newChar.name = name
  newChar.ability = ability
  newChar.foo = 'bar'
  return newChar
}

// constructor function MUST BE CALLED WITH NEW KEYWORD

function CharacterConstructor(name, ability) {
  // with a constructor `this` will be the newly created object { name: name, ability: ability }
  this.name = name
  this.ability = ability
}

CharacterConstructor.prototype.walk = function() {
  return `${this.name} is walking!`
}

const bayonetta = new CharacterConstructor('bayonetta', 'umbra witch casting spooky spellz')
const kirby = new CharacterConstructor('kirby', 'being cute and eating ppl')


// class syntax


class Character {
  constructor(name, ability) {
    console.log('WE R IN THE CONSTRCUTOR')
    this.name = name
    this.ability = ability
  }

  walk() {
    return `${this.name} is walking`
  }
}


const terminator = new Character('T-2000', 'time travel')
const bowser = new Character('bowser', 'breathing fire')
