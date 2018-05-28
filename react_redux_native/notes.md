## React Native Redux Udemy course notes

To create a new project, navigate to parent directory in terminal and use command: react-native init project_name

to run the app in emulator: react-native run-ios (or run-android)

Redux has lot of confusing terminology, but very straightforward concepts
* Reducer: a function that returns some data
* Action: an object that tells that tells the reducer how to change its data; only requirement is that it has a ‘type’ property
* State: data for our app to use
* Store: an object that holds the applications data

const store = Redux.createStore();

This throws an error because it expects at least 1 reducer function to be passed into the createStore function.

const reducer = () => []; fat arrow function that returns an array
e.g. createStore(reducer);

We can query for the state at any time with: store.getState();

In order to change the state of the store with a reducer, we have to send an action, which requires a type property to specifiy the command. We basically feed the action into the reducer, which processes the payload and outputs data to the store. 

const action = { type: 'split_it', payload: 'string' }; 

Reducers are always called with 2 arguments: the current state and an action. 

const reducer = (state = [], action) => {
    if (action.type === 'split_it') {
        return action.payload.split('');
    }
    return state; // otherwise, just return the original state
}