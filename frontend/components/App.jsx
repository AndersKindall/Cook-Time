import React from "react";
import { Provider } from 'react-redux';
import { Route, Redirect, Switch, Link, HashRouter } from 'react-router-dom';


import Modal from './modal/modal'
import NavBarContainer from './navbar/navbar_container'
import RecipeIndexContainer from './recipes/recipe_index_container'
import RecipeShowContainer from "./recipe_show/recipe_show_container";

const App = () => (
  <div className="app">
    <NavBarContainer />
    <Modal />
    <div className="content">
      <Switch>
        <Route exact path='/recipes/:recipeId' component={RecipeShowContainer} />
        <Route exact path='/recipes' component={RecipeIndexContainer}/>
        <Route exact path='/' />
        <Redirect to='/'/>
      </Switch>
    </div>
  </div>
);

export default App;