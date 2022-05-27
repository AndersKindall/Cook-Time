import React from 'react'
import IngredientList from './ingredient_list';
import StepList from './steps_list';
import CommentsBox from './comments_box';

class RecipeShow extends React.Component {
    constructor(props) {
        super(props)
    }

    componentDidMount() {
        this.props.getRecipe(this.props.match.params.recipeId)
    }

    render() {
        const { recipe, currentUser, comments, addComment, updateCurrComment, deleteCurrComment } = this.props;
        if (!recipe || !recipe.ingredients) return null
        return (
            <div className='recipe-show-container'>
                <div className='recipe-show-header'>
                    <h1 className='recipe-show-title'>{recipe.dish_name}</h1>
                    <p className='recipe-show-author'>By {recipe.author}</p>
                </div>
                <div className='recipe-time-yield-box'>
                    <span className='recipe-time-yield-bolded'>YIELD </span>
                    <span className='recipe-time-yield'>{recipe.yield}</span>
                    <br/>
                    <span className='recipe-time-yield-bolded'>TIME </span>
                    <span className='recipe-time-yield'>{recipe.cook_time}</span>
                </div>
                <div className='recipe-show-description-photo-box'>
                    <img className="recipe-show-photo" src={recipe.photoUrl} />
                    <p className='recipe-show-description'>{recipe.description}</p>
                </div>
                <div className='recipe-show-steps-ingredients-box'>
                    <div className='recipe-show-ingredients-list'>
                        <IngredientList key={recipe.id} ingredients={Object.values(recipe.ingredients)} />
                    </div>
                    <div className='recipe-show-steps-list'>
                        <div className='steps-list'>
                            <StepList key={recipe.id} steps={Object.values(recipe.steps)} />
                        </div>
                        <div className='comments-container'>
                            <CommentsBox comments={comments} recipe={recipe} addComment={addComment} updateCurrComment={updateCurrComment} deleteCurrComment={deleteCurrComment} currentUser={currentUser}/>
                        </div>
                    </div>
                </div>
        
            </div>
            
        )
    }
}

export default RecipeShow;