class Dog {
  static findDog(id) {
    return this.allDogs.find((dog) => dog.id === id)
  }

  constructor(dogDataObj) {
    this.id = dogDataObj.id
    this.name = dogDataObj.name
    this.image = dogDataObj.image
    this.isGoodDog = dogDataObj.isGoodDog
    Dog.allDogs.push(this)
  }

  renderSpan() {
    return `<span data-id="${this.id}">${this.name}</span>`
  }

  renderDetails() {
    const isGoodDogString = this.isGoodDog ? 'Good Dog!' : 'Bad Dog!'
    return `<img src="${this.image}" >
          <h2>${this.name}</h2>
          <button>${isGoodDogString}</button>
          <button class="edit" data-id="${this.id}" data-action="edit">Edit this Dog!</button>
          `

  }
}

Dog.allDogs = []
