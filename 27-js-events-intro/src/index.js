console.log('WHAT IS THE FORM? ', document.querySelector('#comment-form'))


document.addEventListener('DOMContentLoaded', function domContentHandler() {
  console.log('WHAT IS THE FORM? ', document.querySelector('#comment-form'))
  console.log('%c Hello lol', 'color:goldenrod')

  const form = document.querySelector('#comment-form')
  const helicopterNode = document.querySelector('#helicopter-parent')
  const commentContainer = document.querySelector('#comments-container')

  form.addEventListener('submit', function newCommentHandler(event) {
    // stop the form from POSTING
    event.preventDefault()
    console.log(event.target)
    // find what the user typed into the input field
    // const newComment = document.querySelector('#new-comment').value

    // the event target will be the FORM
    const newComment = event.target.querySelector('#new-comment').value
    // make a new p tag using the user's comment and append it to ye olde DOM
    const newPTag = document.createElement('p')
    newPTag.textContent = newComment
    commentContainer.appendChild(newPTag)

    event.target.reset() //clear form inputs
  })

  helicopterNode.addEventListener('click', function handleClick(event) {
    console.log(event.target)
    // console.log(event.target.dataset.name)
    if (event.target.dataset.name === 'log') {
      console.log('U CLICKED THE LOG BTN')
    } else if (event.target.dataset.name === 'error') {
      console.error('D A N G E R')
    } else if (event.target.dataset.name === 'alert') {
      window.alert('HI')
    }
  })


})
