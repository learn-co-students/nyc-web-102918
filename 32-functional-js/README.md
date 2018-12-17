# Functional JS

This lecture is devoted to an in depth look at functional programming paradigms in JS. In particular, we will be looking at:


## 1. Higher-order Functions 

What are they?
A function that accepts a function as an argument (i.e. a callback) and/or returns a function.

What are some use-cases?
- Iterators
- `then`
- Event listeners


## 2. Callbacks

What are they?
Function that is passed in as an argument to another function. The higher-order function that accepts a callback will invoke it at some point. 

What are some use-cases?
- Argument for iterators
- Argument for `then`
- Atgument for event listeners


## 3. Closures

What are they?
Functions that return functions (i.e. inner function) and enclose some values that are accessible to the inner function.

What are some use-cases?
- OO JS
- Making functions that are reusable
- Making functions that have private variables


## 4. Pure vs Impure Functions

What are they?
Pure functions are functions that given the same inputs, always produce the same outputs and do not trigger side-effects.

What are some use-cases?
Creating functions that are easy to test and will reliably produce the same outcomes every time.



NOTES:

IIFE: immediately invoked function execution

Side-effect:
- fetch 
- console.log
- DOM manipulation
- Manipulating or using variables outside of scope of that function