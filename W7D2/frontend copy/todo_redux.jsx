import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';

import Root from './components/root';

document.addEventListener('DOMContentLoaded', () => {
  const preloadedState = localStorage.state ?
    JSON.parse(localStorage.state) : {};
  const store = configureStore(preloadedState);

  store.dispatch = addLoggingToDispatch(store);

  const root = document.getElementById('content');
  ReactDOM.render(<Root store={store} />, root);
});

//part 1 of the homework
const addLoggingToDispatch = (store) => {
  let local_store = store;
  return (action) => {
    console.log(store.getState());
    console.log(action());
    local_store.dispatch(action);
    console.log(store.getState())

  }
}

//part 2 of the homework
const addLoggingToDispatch = store => action => next => {

}

const applyMiddlewares = {

}

const applyMiddlewares(store,...middleware) {
  const dispatch = store.dispatch;
  middleware.forEach( ware => dispatch = ware(store)(dispatch); )


}


//
// const logger = store => next => action => {
//
//   console.log('Action received:', action);
//   console.log('State pre-dispatch:', store.getState());
//
//   let result = next(action);
//
//   console.log('State post-dispatch:', store.getState());
//
//   return result;
// };
