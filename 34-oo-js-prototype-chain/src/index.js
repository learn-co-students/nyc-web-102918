document.body.addEventListener('keydown', handleKeyDown.bind(link))
// document.body.addEventListener('keydown', link.walkEast.bind(link))

document.body.addEventListener('click', link.stop.bind(link))

function handleKeyDown(e) {
  console.log(this)
  switch (e.keyCode) {
    case 39:
      link.walkEast()
      break
    case 40:
      link.walkSouth()
      break
    case 32:
      link.stop()
      break
    default:
      console.log(e.keyCode)
  }
}
