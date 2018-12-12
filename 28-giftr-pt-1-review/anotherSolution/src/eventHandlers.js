const editGift = (event) => {
  const gift = document.getElementById(event.target.id)
  const giftId = event.target.dataset.id

  gift.innerHTML += `<div id='edit-gift-div'>
                      <h2>Edit Gift</h2>
                      <form id='edit-gift-form'>
                        <label for="name">Gift Name: </label>
                        <input id="edit-gift-name" type="text" name="name" value="">
                        <label for="image">Gift Image: </label>
                        <input id="edit-gift-image" type="text" name="image" value="">
                        <br>
                        <button type="submit" name="button" class="ui button">Edit Gift</button>
                      </form>
                      </div>`

  const editForm = document.getElementById('edit-gift-form')

  editForm.addEventListener('submit', event => {
    event.preventDefault()
    editGiftDetails(gift, giftId)
  })
}

const removeForm = () => {
  document.getElementById('edit-gift-div').remove()
}

const editGiftDetails = (gift, giftId) => {
  const name = document.getElementById('edit-gift-name').value
  const image = document.getElementById('edit-gift-image').value

  gift.innerHTML = `${ name } <br />
                    <img id='gift-image-${giftId}' src='${ image }' height=200 width=200>`

  gifts = gifts.filter( gift => gift.id !== parseInt(giftId) )
  changedGift = { id: parseInt(giftId), name, image}
  gifts = [...gifts, changedGift]
}

const filterGifts = (event, gifts, giftList) => {
  const input = event.target.value
  const filteredGifts = gifts.filter( gift => gift.name.includes(input) )
  giftList.innerHTML = ''
  appendGifts(filteredGifts)
}
