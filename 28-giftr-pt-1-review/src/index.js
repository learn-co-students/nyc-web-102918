document.addEventListener('DOMContentLoaded', () => {
  // console.log('DOM has been fully loaded')
  // console.log(gifts)
  // const giftList = document.querySelector('.gift-list')
  const giftList = document.getElementById('gift-list')
  const filterInput = document.getElementById('filter-input')

  // boolean to check if we clicked on the edit button:
  let clicked = false
  // for (let gift of gifts) {
  //   console.log(gift)
  // }

  gifts.forEach(function(gift) {
    // inner HTML:
    giftList.innerHTML += `<li>
                            ${gift.name} <br />
                            <img src='${gift.image}' height=200 width=200>
                            <br>
                            <button data-action='edit-gift' class='ui button'>Edit</button>
                            <button data-action='delete-gift' class='ui button'>Delete</button>
                          </li>`

    // JS creating & appending elements:
    // const giftLi = document.createElement('li')
    // giftLi.innerText = gift.name
    // const giftImage = document.createElement('img')
    // giftImage.src = gift.image
    // giftLi.appendChild(giftImage)
    // giftList.appendChild(giftLi)
  })

  giftList.addEventListener( 'click', (event) => {
    if (event.target.dataset.action === "edit-gift") {
      clicked = !clicked

      if (clicked) {
        const gift = event.target.parentNode
        // const gift = event.target.dataset.id
        // const gift = document.getElementById(`gift-${giftId}`)

        gift.innerHTML += `<form id="edit-gift-form" class="ui form" action="index.html" method="POST">
                            <label for="name">Gift Name: </label>
                            <input id="edit-gift-name" type="text" name="name" value="">
                            <label for="image">Gift Image: </label>
                            <input id="edit-gift-image" type="text" name="image" value="">
                            <br>
                            <button data-action='edit-gift-details' id="edit-gift-form-button" type="submit" name="button" class="ui button">Edit Gift</button>
                          </form>`
      } else {
        const form = document.getElementById('edit-gift-form')
        form.remove()
      }
    }

    if (event.target.dataset.action === 'edit-gift-details') {
      event.preventDefault()

      const name = document.getElementById('edit-gift-name').value
      const image = document.getElementById('edit-gift-image').value
      const gift = event.target.parentNode.parentNode

      gift.innerHTML = `
                        ${name} <br />
                        <img src='${image}' height=200 width=200>
                        <br>
                        <button data-action='edit-gift' class='ui button'>Edit</button>
                        <button data-action='delete-gift' class='ui button'>Delete</button>

                        `
    }

    if (event.target.dataset.action === 'delete-gift') {
      event.target.parentNode.remove()
    }
  })

  filterInput.addEventListener( 'input', (event) => {
    const searchTerm = event.target.value

    const filteredGifts = gifts.filter(function(gift) {
      return gift.name.includes(searchTerm)
    })
    // arrow function syntax -- these will all produce the same result
    // gifts.filter( (gift) => { return gift.name.includes(searchTerm) })
    // gifts.filter( (gift) => gift.name.includes(searchTerm) )
    // gifts.filter( gift => gift.name.includes(searchTerm) )

    giftList.innerHTML = ''

    filteredGifts.forEach(function(gift) {
      // inner HTML
      giftList.innerHTML += `<li>
                              ${gift.name} <br />
                              <img src='${gift.image}' height=200 width=200>
                              <br>
                              <button data-action='edit-gift' class='ui button'>Edit</button>
                              <button data-action='delete-gift' class='ui button'>Delete</button>
                            </li>`
    })
  })


})
