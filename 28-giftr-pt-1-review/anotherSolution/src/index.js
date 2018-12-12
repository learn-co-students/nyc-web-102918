document.addEventListener('DOMContentLoaded', () => {
  const giftList = document.getElementById('gift-list')
  const noGifts = document.getElementById('no-gifts-yet')
  const filter = document.getElementById('filter-input')
  let clicked = false

  appendGifts = (gifts) => {
    gifts.forEach( gift => {
      giftList.innerHTML += `<li class='gift-li' data-action='edit-gift' id='gift-${gift.id}' data-name=${ gift.name } data-id='${ gift.id }'>
                              ${ gift.name } <br />
                              <img id='gift-image-${gift.id}' src='${ gift.image }' height=200 width=200>
                              <br />
                              <button data-action='delete-gift' class='ui button'>Delete</button>
                            </li>`
    })
  }

  noGifts.remove()

  appendGifts(gifts)

  giftList.addEventListener( 'click', event => {
    if (event.target.dataset.action === 'edit-gift') {
      clicked = !clicked
      clicked ? editGift(event) : removeForm()
    }

    if (event.target.dataset.action === 'delete-gift') {
      event.target.parentNode.remove()
    }
  })

  filter.addEventListener( 'keyup', event => {
    filterGifts(event, gifts, giftList)
  })
})
