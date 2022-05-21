import React from "react";
import ReactDOM from "react-dom";
import configureStore from './store/store';
import Root from './components/root'


document.addEventListener("DOMContentLoaded", () => {
  let preloadededState = undefined
  if (window.currentUser) {
    preloadededState = {
      session: {
        currentUser: window.currentUser
      }
    }
    delete window.currentUser;
  } 

  const store = configureStore(preloadededState) 
  window.store = store
  const root = document.getElementById("root");
  ReactDOM.render(<Root store={store} />, root);


});