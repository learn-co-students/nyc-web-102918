import React from 'react'
import { createStore, combineReducers, applyMiddleware } from 'redux'
import { Provider } from 'react-redux'
import thunk from 'redux-thunk'
import { composeWithDevTools } from 'redux-devtools-extension'
import ReactDOM from 'react-dom'
import { BrowserRouter as Router } from 'react-router-dom'

import 'semantic-ui-css/semantic.min.css'

import App from './App'
import usersReducer from './reducers/usersReducer' //TODO: move
import exampleReducer from './reducers/exampleReducer'
import registerServiceWorker from './registerServiceWorker'

// combines your reducers =>
/*
{
  key: value
  whereToNestReducerState: reducer
}
*/
const rootReducer = combineReducers({ usersReducer: usersReducer, something: exampleReducer }) //TODO: move this too

// dion't use thunk if you don't think you need to
// is not the only lubrary to do that -=> redux-saga, redux-promise
const store = createStore(rootReducer, composeWithDevTools(applyMiddleware(thunk))) //TODO: move this

console.log(`%c INITIAL REDUX STORE`, 'color: purple', store.getState())

ReactDOM.render(
  <Provider store={store}>
    <Router>
      <App />
    </Router>
  </Provider>,
  document.getElementById('root')
)
registerServiceWorker()
