console.log('%c HELLO WORLD', 'color: green')
console.log('%c HELLO WORLD', 'color: gold')
console.log('%c HELLO WORLD', 'color: firebrick')

let x = 1

let y = x

y++

console.log('X IS, ', x)
console.log('Y IS, ', y)

function beefy() {
  console.log('I am a beefy fn')
}

console.log(beefy)

beefy()

const tasty = function() {
  console.log('super tasty')
}

tasty.quality = 'high'

// debugger

console.dir(tasty)


function addOne(num) {
  return num + 1
}


const nums = [1, 2, 3].map(addOne)


const names = ['evans', 'also evans', 'vicky', 'steven'].map(function mapNames(name) {
  return name.toUpperCase()
})


if (true) {
  console.log('THIS IS TRUE')
}
