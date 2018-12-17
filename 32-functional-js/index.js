
// EXAMPLE OF H-O FUNCTION THAT RETURNS FUNCTION
// function taxCalculator(tax){
// 	console.log("MAKING MY TAX CALCULATOR")

// 	return function(price){
// 		console.log("CALLING MY CALCULATOR")
// 		return price + price*tax
// 	}
// }

// function robotFactory(){
// 	let count = 0
// 	let all = []

// 	return function(name){
// 		count++
// 		let obj = {name: name, id: count}

// 		all.push(obj)
// 		return obj
// 	}
// }



// // EXAMPLES OF BUILT IN  H-O FUNCTIONS THAT TAKE CALLBACKS
// // 1. event listeners
// // document.addEventlistener("click", (e) => {

// // })


// // 2. iterators
// // const array = [1,2,3,4,5]

// // array.filter(num => { return num%2 === 0 })

// // // 3. `then`
// // fetch(url)
// // .then(res => res.json())
// // .then(console.log)




// WRITING OUR OWN ITERATORS
// function myForEach(array, callback){
// 	for(let i=0; i < array.length; i++){
// 		callback(array[i])
// 	}
// }

// function myMap(array, callback){
// 	let copy = array.slice()

// 	for(let i=0; i < array.length; i++){
// 		copy[i] = callback(array[i])
// 	}

// 	return copy
// }



function Adapter(baseURL){
	// baseURL: "http://localhost:3000"

	function get(route){
		// route: "/pokemon"
		return fetch(baseURL + route)
		.then(res=> res.json())
	}

	function post(route, data){
		
		const params = createParams("POST", data)

		return fetch(baseURL + route, params)
		.then(res => res.json())
	}

	function patch(route, data){
		
		const params = createParams("PATCH", data)

		return fetch(baseURL + route, params)
		.then(res => res.json())
	}

	function createParams(method, data){

		const params = {
			method: method,
			headers: {
				"Content-Type": "application/json",
				"Accepts": "application/json"
			},
			body: JSON.stringify(data)
		}

		return params
	}

	let allFuncs = {
		get: get,
		post: post,
		patch: patch
	}

	return allFuncs
}


let adapter = Adapter("http://localhost:3000")







