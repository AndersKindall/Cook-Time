import React from "react";
import ReactDOM from "react-dom";
import configureStore from './store/store';
import Root from './components/root'


document.addEventListener("DOMContentLoaded", () => {
  const root = document.getElementById("root");
  let preloadededState ;
  if (window.currentUser) {
    preloadededState = {
      session: {
        currentUser: window.currentUser
      }
    }
    delete window.currentUser;
  } 

  const store = configureStore(preloadededState) 
  ReactDOM.render(<Root store={store} />, root);


});