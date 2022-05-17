import React from "react";
import ReactDOM from "react-dom";
import configureStore from './store/store';
import Root from './components/root'

import { login, logout, signup } from "./util/session_api_util";

document.addEventListener("DOMContentLoaded", () => {
  let preloadededState = undefined
  if (window.currentUser) {
    preloadededState = {
      session: {
        currentUser: window.currentUser
      }
    }
  } 
  const store = configureStore(preloadededState) 
  const root = document.getElementById("root");
  ReactDOM.render(<Root store={store} />, root);
  // window.store = store;
  // window.getState = store.getState;
  // window.dispatch = store.dispatch;
  // window.login = login;
  // window.logout = logout;
  // window.signup = signup;

});