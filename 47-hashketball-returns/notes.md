* Go over current code

* Starting with redux, things we need
  * create store
  * create reducer
  * dispatch functions/action
  * mapStateToProps
  * mapDispatchToProps

* Where do we create store? Initial set up
  * index.js
    * import createStore from redux
      * must install react-redux and redux
      * react-redux gives us Provider and connect
      * redux gives us createStore()
      * const store = createStore()
        * store takes a reducer as an argument (needs default state)
        * reducer needs default state, in case you create action that doesn't match a type
        * console.log(store.getState())

        const defaultState = { teams: [], selectedPlayer: null}
    * import {Provider} from 'react-redux'  (because it's a component)
      * provider wraps around app and takes store as a prop

* how do we access state?
  * import {connect} from 'react-redux'
    * export default connect(mapStateToProps, mapDispatchToProps)(App)
  * function mapStateToProps(state){
      return { beef: "hello" }
    }

    * connect function probably looks like:
      function connect(callback1, callback2)
  * console.log (this.props.beef) <- will see beefs value in console

* how do we update state
  * mapDispatchToProps(dispatch){
      return {
        selectPlayer: (player) => {dispatch({type: "SHOWPLAYER", payload: player})}
      }
  * create appropriate action response in your reducer
