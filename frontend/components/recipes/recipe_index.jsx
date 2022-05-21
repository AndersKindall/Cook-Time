import React from 'react';
import RecipeIndexCard from './recipe_index_card';


class RecipeIndex extends React.Component {
    
    componentDidMount() {
        this.props.getAllRecipes();
    }
    render() {
        return(
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