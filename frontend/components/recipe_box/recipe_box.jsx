import React from "react";
import RecipeIndexCard from "../recipes/recipe_index_card";

class RecipeBox extends React.Component {
    constructor(props) {
        super(props);
    }
    componentDidMount() {
        this.props.getAllRecipes();
        this.props.getThisUser(parseInt(this.props.match.params.userId));
        this.props.clearSearch();
        window.scrollTo(0, 0);
    }

    render() {
        let { saves, recipes, currentUser, isModalOpen, openModal, saveThisRecipe, deleteThisSave } = this.props;
        {!currentUser && !isModalOpen ? openModal('signup') : '' }
        if (Object.keys(recipes).length === 0) return (
            <div className='no-search-results'>
                <h1 className="no-search-results-header">No Saved Recipes</h1>
                <h1 className='no-search-results-subheader'>Add recipes to your Recipe Box</h1>
            </div>
        )

        return (
            <div className='recipe-grid-outer-container' >
                <div className='recipe-grid-container'>
                    <h1 className='recipe-grid-title'>Saved Recipes</h1> 
                    <h2 className='recipe-grid-subtitle'>{saves.length} recipes</h2>
                    {saves.length === 0 ? 
                        <div className='no-search-results'>
                            <h1 className="no-search-results-header">No Saved Recipes</h1>
                            <h2 className='no-search-results-subheader'>Add recipes to your Recipe Box</h2>
                        </div>
                    :   
                        <div className='recipe-grid'>
                            {/* Retool RecipeIndex and everywhere there is a recipe index */}
                            {saves.map((save, idx) => {
                                let saveId = save.recipeId
                                let recipe = recipes[saveId]
                                return <RecipeIndexCard recipe={recipe} key={idx} currentUser={currentUser} openModal={openModal} saveThisRecipe={saveThisRecipe} deleteThisSave={deleteThisSave} />
                            }
                            )}
                        </div>
                    }
                </div>
            </div>
        )
    }
}

export default RecipeBox;