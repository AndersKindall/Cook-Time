import React from "react";
import { Provider } from 'react-redux';
import { Route, Redirect, Switch, Link, HashRouter } from 'react-router-dom';


import Modal from './modal/modal'
import NavBarContainer from './navbar/navbar_container';
import RecipeIndexContainer from './recipes/recipe_index_container';
import RecipeShowContainer from "./recipe_show/recipe_show_container";
import SearchRecipesContainer from "./search_recipes/search_recipes_container";
import RecipeBoxContainer from "./recipe_box/recipe_box_container";
import HomePageContainer from "./home_page/home_page_container";
import Footer from "./footer/footer";

const App = () => (
  <div className="app">
    <Modal />
    <NavBarContainer />
    <div className="content">
      <Switch>
        <Route exact path='/recipes/:recipeId' component={RecipeShowContainer} />
        <Route exact path='/recipes' component={RecipeIndexContainer}/>
        <Route exact path='/search/:query' component={SearchRecipesContainer} />
        <Route exact path='/users/:userId/recipebox' component={RecipeBoxContainer} />
        <Route exact path='/' component={HomePageContainer}/>
        <Redirect to='/'/>
      </Switch>
    </div>
    <Footer />
  </div>
);

export default App;