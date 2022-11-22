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
        let { recipes, currentUser, openModal, saveThisRecipe, deleteThisSave } = this.props
        return(
                <div className='recipe-grid-outer-container' >
                    <div className='recipe-grid-container'>
                        <h1 className='recipe-grid-title'>All Recipes</h1>
                        <h2 className='recipe-grid-subtitle'>{recipes.length} recipes</h2>
                        <div className='recipe-grid'>
                            {recipes.map((recipe, idx) => {
                                return <RecipeIndexCard key={idx} recipe={recipe} currentUser={currentUser} openModal={openModal} saveThisRecipe={saveThisRecipe} deleteThisSave={deleteThisSave}/>                                   
                            }
                            )}
                        </div>
                    </div>
                </div>
        )
    }
}

export default RecipeIndex