document.addEventListener('DOMContentLoaded', () => {
	let allPokemon = []
	const pokemonContainer = document.getElementById("pokemon-container")
	const newPokemonForm = document.querySelector("#new-pokemon-form")
	const editPokemonForm = document.querySelector("#edit-pokemon-form")
	const searchBar = document.getElementById("pokemon-search-input")

	function fetchPokemon(){
		fetch("http://localhost:3000/pokemon")
		.then((response) => {
			return response.json()
		})
		.then((data) => {
			allPokemon = data

			showAllPokemon(data)
		})
	}


	function showAllPokemon(pokemon){
		pokemonContainer.innerHTML = pokemon.map(renderSinglePokemon).join('')
		// pokemon.forEach((pokemon) => {
		//    pokemonContainer.innerHTML += renderSinglePokemon(pokemon)
		// })

	}

	editPokemonForm.addEventListener("submit", (e) => {
		e.preventDefault()
		const editPokeName = e.target.querySelector("#edit-poke-name").value
		const editPokeFrontImg = e.target.querySelector("#edit-poke-front-sprite").value
		const editPokeBackImg = e.target.querySelector("#edit-poke-back-sprite").value
		fetch(`http://localhost:3000/pokemon/${e.target.dataset.id}`, {
			method: "PATCH",
			headers: {
				"Content-Type": "application/json", //type of data being sent
				"Accept": "application/json" //type of data I (the client) want back
			},
			body: JSON.stringify({
				name: editPokeName,
				sprites: {
					front: editPokeFrontImg,
					back: editPokeBackImg
				}
			})
		})
		.then(r => r.json())
		.then(editedPoke => {
			// find the idx pos of the edited pokemon so we can update in the allPokemon array
			const editedPokeIdx = allPokemon.findIndex(p => p.id === editedPoke.id)
			allPokemon[editedPokeIdx] = editedPoke
			showAllPokemon(allPokemon)
			document.body.className = ""
			document.querySelector('#overlay').style.visibility = "hidden"
		})
	})

	newPokemonForm.addEventListener("submit", (e) => {
		e.preventDefault() //stop form from POSTing
		const newPokeName = e.target.querySelector("#new-poke-name").value
		const newPokeFrontImg = e.target.querySelector("#new-poke-front-sprite").value
		const newPokeBackImg = e.target.querySelector("#new-poke-back-sprite").value

		fetch("http://localhost:3000/pokemon", {
			method: "POST",
			headers: {
				"Content-Type": "application/json", //type of data being sent
				"Accept": "application/json" //type of data I (the client) want back
			},
			body: JSON.stringify({
				name: newPokeName,
				sprites: {
					front: newPokeFrontImg,
					back: newPokeBackImg
				}
			})
		})
		.then(/*function*/r => /*return*/ r.json())
		.then(newPoke => {
			allPokemon.push(newPoke)
			pokemonContainer.innerHTML += renderSinglePokemon(newPoke)
		})


	})

	pokemonContainer.addEventListener("click", (e) => {
		if (e.target.tagName === "IMG") {
			const foundPokemon = allPokemon.find(pokemon => {
				return pokemon.id === parseInt(e.target.dataset.id)
			})

			if (e.target.src === foundPokemon.sprites.front) {
				e.target.src = foundPokemon.sprites.back
			} else {
				e.target.src = foundPokemon.sprites.front
			}
		} else if (e.target.dataset.action === "delete") {
			// alert('Are you sure u want 2 delete that pokemon?')
			fetch(`http://localhost:3000/pokemon/${e.target.dataset.id}`, { method: "DELETE" }) //removes pokemon from db
			// document.querySelector(`#pokemon-${e.target.dataset.id}`).remove()

			// re-render the entire pokemon container!!!
			allPokemon = allPokemon.filter(/*function*/(pokemon) => /*return*/ {
				return pokemon.id !== parseInt(e.target.dataset.id)
				// return pokemon.id != e.target.dataset.id
			})
			showAllPokemon(allPokemon)
		} else if (e.target.dataset.action === "edit") {
			editPokemonForm.dataset.id = e.target.dataset.id //assign the pokemon form a data-id that matches the id of the pokemon the user wishes to edit
			const editPokeInput = document.querySelector("#edit-poke-name")
			const editPokeFrontSprite = document.querySelector("#edit-poke-front-sprite")
			const editPokeBackSprite = document.querySelector("#edit-poke-back-sprite")

			document.body.className = 'is-blurred'
			document.querySelector('#overlay').style.visibility = 'visible'
			const foundPokemon = allPokemon.find(pokemon => {
				return pokemon.id === parseInt(e.target.dataset.id)
			})
			editPokeInput.value = foundPokemon.name
			editPokeFrontSprite.value = foundPokemon.sprites.front
			editPokeBackSprite.value = foundPokemon.sprites.back
		}
	})

	searchBar.addEventListener("input", (e) => {

		const filteredPokemon = allPokemon.filter((pokemon) => {
			return pokemon.name.includes(e.target.value)
		})

		// const filteredPokemonIDs = filteredPokemon.map(pokemon => pokemon.id)

		// const cards = document.querySelectorAll(".pokemon-container")


		// cards.forEach(card => {
		//  if (filteredPokemonIDs.includes(parseInt(card.dataset.id))){
		//    card.style.display = ""
		//  } else {
		//    card.style.display = "none"
		//  }
		// })

		pokemonContainer.innerHTML = ""

		showAllPokemon(filteredPokemon)



	})

	function renderSinglePokemon(pokemon) {
		return `
			<div id="pokemon-${pokemon.id}" data-id="${pokemon.id}"class="pokemon-container">
				<div style="width:230px;margin:10px;background:#fecd2f;color:#2d72fc" class="pokemon-frame">
					<h1 class="center-text">${pokemon.name}</h1>
					<div style="width:239px;margin:auto">
						<div style="width:96px;margin:auto">
							<img data-id="${pokemon.id}" data-beef="stroganoff" data-action="flip" class="toggle-sprite" src="${pokemon.sprites.front}">
							<button data-id="${pokemon.id}" data-action="edit">Edit</button>
							<button data-id="${pokemon.id}" data-action="delete">X</button>
						</div>
					</div>
				</div>
			</div>
		`
	}


	fetchPokemon()
})
