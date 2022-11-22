import React from "react";
import { Link } from 'react-router-dom';
import { getThisUser } from "../../actions/user_actions";
import RecipeIndexCard from "../recipes/recipe_index_card";
import Splash from "./splash";

class HomePage extends React.Component {
    constructor(props){
        super(props);
       
    }
    componentDidMount() {
        this.props.getAllRecipes();
        this.props.closeModal();
        this.props.clearSearch();
        window.scrollTo(0, 0);
    }

    render() {
        let { currentUser, recipes, suggestions, loves, openModal, saveThisRecipe, deleteThisSave } = this.props
        
        if (recipes.length === 0) return null;
        return (
            <div className="main-app">
                <div className="splash-outer-container" >
                    <Link to={`/recipes/1/`} style={{ textDecoration: 'none' }}>
                        <Splash recipe={recipes[0]} />
                    </Link>
                </div>
                <div className="home-page-main-body" >
                    <div className="home-page-header">
                        <h1 className="home-page-title">What to Cook This Week</h1>
                        <h2 className="home-page-subtitle">Recipes, guides and more</h2>
                    </div>
                    <Link to={`/recipes/`} style={{ textDecoration: 'none'}}>
                        <div className="see-all-link-wrapper">
                            <div className="see-all-link">See all recipes</div>
                        </div>
                    </Link>
                    <div className="home-page-recipe-card-container">
                        <div className="recipe-card-header">
                            <h1 className="recipe-card-header-title">Thanksgiving Sides</h1>
                            <h2 className="recipe-card-header-subtitle">Try something new this Holiday Season</h2>
                        </div>
                        <div className="recipe-card-container">
                            <ul className="recipe-card">
                                {suggestions.map((recipe, idx) => <RecipeIndexCard recipe={recipe} key={idx} openModal={openModal} currentUser={currentUser} saveThisRecipe={saveThisRecipe} deleteThisSave={deleteThisSave}/> )}
                            </ul>
                        </div>
                    </div>
                    <div className="home-page-recipe-card-container">
                        <div className="recipe-card-header">
                            <h1 className="recipe-card-header-title">Recipes We Think You'll Love</h1>
                            <h2 className="recipe-card-header-subtitle">Dishes recommended for you.</h2>
                        </div>
                        <div className="recipe-card-container">
                            <ul className="recipe-card">
                                {loves.map((recipe, idx) => <RecipeIndexCard recipe={recipe} key={idx} openModal={openModal} currentUser={currentUser} saveThisRecipe={saveThisRecipe} deleteThisSave={deleteThisSave}/> )}
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            
        )
    }
}

export default HomePage;