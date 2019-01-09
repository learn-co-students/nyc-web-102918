const addBtn = document.querySelector('#new-toy-btn')
const toyFormDiv = document.querySelector('.container')
const toyForm = document.querySelector(".add-toy-form")
let toyCollection = document.querySelector("#toy-collection")

let addToy = false

// YOUR CODE HERE
function fetchToys(){
  fetch("http://localhost:3000/toys")
  .then(res => res.json())
  .then(data => {

    const toyDataHTML = renderAllToys(data)
    toyCollection.innerHTML = toyDataHTML
  })
}

function renderAllToys(toyArray){
  return toyArray.map(toy => {
    return renderOneToy(toy)
  }).join("")
}

function renderOneToy(toy){
  return `
      <div class="card">
        <h2>${toy.name}</h2>
        <img src=${toy.image} class="toy-avatar" />
        <p id="likes-${toy.id}">${toy.likes} Likes </p>
        <button class="like-btn" data-likes=${toy.likes} data-id=${toy.id}>Like <3</button>
      </div>
    `
}

function addListeners(){
  

  toyForm.addEventListener("submit", (event) => {
    event.preventDefault()
    const name = event.target.name.value
    const image = event.target.image.value

    const headers = {
      method: "POST",
      headers: {
          "Content-Type": "application/json",
          "Accept": "application/json"
      },
      body: JSON.stringify({
          "name": name,
          "image": image,
          "likes": 0
      })
    }

    fetch("http://localhost:3000/toys", headers)
    .then(res => res.json())
    .then(toy => {
      let newToyHTML = renderOneToy(toy)
      toyCollection.innerHTML += newToyHTML
    })
  })

  addBtn.addEventListener('click', () => {
    addToy = !addToy
    if (addToy) {
      toyFormDiv.style.display = 'block'
    } else {
      toyFormDiv.style.display = 'none'
    }
  })

  toyCollection.addEventListener("click", (e)=> {
    if (e.target.tagName === "BUTTON"){

      const headers = {
        method: "PATCH",
        headers: {
          "Content-Type": "application/json",
          Accept: "application/json"
        },
        body: JSON.stringify({
          "likes": parseInt(e.target.dataset.likes) + 1
        })
      }

      fetch(`http://localhost:3000/toys/${e.target.dataset.id}`, headers)
      .then(res => res.json())
      .then(data => {
        let p = document.querySelector(`#likes-${data.id}`)
        p.innerText = `${data.likes} likes`

        e.target.dataset.likes = data.likes
      })
    }
  })

}



fetchToys()
addListeners()






// OR HERE!