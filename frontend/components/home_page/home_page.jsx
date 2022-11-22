import React from "react";
import { Link } from 'react-router-dom';
import RecipeIndexCard from "../recipes/recipe_index_card";
import Splash from "./splash";

class HomePage extends React.Component {
    constructor(props) {
        super(props)
    }

    componentDidMount() {
        this.props.getAllRecipes();
        this.props.closeModal();
        this.props.clearSearch();
        window.scrollTo(0, 0);
    }

    render() {
        let { loggedIn, splashRecipe, suggestedRecipes, lovedRecipes, openModal, saveThisRecipe, deleteThisSave } = this.props 
        
        return (
            <div className="main-app">
                <div className="splash-outer-container" >
                    <Link to={`/recipes/${splashRecipe.id}`} style={{ textDecoration: 'none' }}>
                        <Splash recipe={splashRecipe} />
                    </Link>
                </div>
            </div>
        )
    }
}

export default HomePage;