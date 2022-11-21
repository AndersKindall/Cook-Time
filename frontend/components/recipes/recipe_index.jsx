import React from 'react';
import RecipeIndexCard from './recipe_index_card';


class RecipeIndex extends React.Component {
    
    componentDidMount() {
        this.props.getAllRecipes();
        this.props.clearSearch();
        this.props.closeModal();
        window.scrollTo(0, 0);
    }
    render() {
        return(
            let { recipes, currentUser, isModalOpen, openModal, saveThisRecipe, deleteThisSave } = this.props
            // Finish adding titles and refactor
            <ul className='recipe-grid'>
                {
                    this.props.recipes.map((recipe) => {
                        return (
                        <li>
                            <RecipeIndexCard key={recipe.id} recipe={recipe} currentUser={this.props.currentUser} openModal={this.props.openModal}/>
                        </li>
                        )
                    })
                }
            </ul>
        )
    }
}

export default RecipeIndex