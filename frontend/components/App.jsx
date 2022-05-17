import React from "react";
import { Provider } from 'react-redux';
import { Route, Redirect, Switch, Link, HashRouter } from 'react-router-dom';


import Modal from './modal/modal'
import NavBarContainer from './navbar/navbar_container'

const App = () => (
  <div>
    <Modal />
    <header className="nav-header">
        <Link to="/" className="home-link">
            <h1>Cook Time</h1>
        </Link>
        <div className="search-bar-container">What would you like to cook?</div>
        <NavBarContainer />
    </header>  
  </div>
);

export default App;