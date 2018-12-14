document.addEventListener('DOMContentLoaded', () => {

	let allPokemon = []
	const pokemonContainer = document.getElementById("pokemon-container")
	const newPokemonForm = document.querySelector("#new-pokemon-form")
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
		pokemon.forEach((pokemon) => {
				pokemonContainer.innerHTML += `
					<div data-id="${pokemon.id}"class="pokemon-container">
					  <div style="width:230px;margin:10px;background:#fecd2f;color:#2d72fc" class="pokemon-frame">
					    <h1 class="center-text">${pokemon.name}</h1>
					    <div style="width:239px;margin:auto">
					      <div style="width:96px;margin:auto">
					        <img data-id="${pokemon.id}" data-beef="stroganoff" data-action="flip" class="toggle-sprite" src="${pokemon.sprites.front}">
					      </div>
					    </div>
					  </div>
					</div>
				`
		})

	}

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
			pokemonContainer.innerHTML += `
				<div data-id="${newPoke.id}"class="pokemon-container">
					<div style="width:230px;margin:10px;background:#fecd2f;color:#2d72fc" class="pokemon-frame">
						<h1 class="center-text">${newPoke.name}</h1>
						<div style="width:239px;margin:auto">
							<div style="width:96px;margin:auto">
								<img data-id="${newPoke.id}" data-beef="stroganoff" data-action="flip" class="toggle-sprite" src="${newPoke.sprites.front}">
							</div>
						</div>
					</div>
				</div>
			`
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
		}
	})

	searchBar.addEventListener("input", (e) => {

		const filteredPokemon = allPokemon.filter((pokemon) => {
			return pokemon.name.includes(e.target.value)
		})

		// const filteredPokemonIDs = filteredPokemon.map(pokemon => pokemon.id)

		// const cards = document.querySelectorAll(".pokemon-container")


		// cards.forEach(card => {
		// 	if (filteredPokemonIDs.includes(parseInt(card.dataset.id))){
		// 		card.style.display = ""
		// 	} else {
		// 		card.style.display = "none"
		// 	}
		// })

		pokemonContainer.innerHTML = ""

		showAllPokemon(filteredPokemon)



	})


	fetchPokemon()
})
