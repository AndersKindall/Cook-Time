import React from 'react'
import IngredientList from './ingredient_list';
import StepList from './steps_list';
import CommentsBox from './comments_box';

class RecipeShow extends React.Component {
    constructor(props) {
        super(props);
        this.handleSave = this.handleSave.bind(this);
    }

    componentDidMount() {
        this.props.getRecipe(this.props.match.params.recipeId);
        this.props.clearSearch();
        window.scrollTo(0, 0);
    }

    componentDidUpdate(oldProps) {
        if (this.props.match.params.recipeId !== oldProps.match.params.recipeId) {
            this.props.getRecipe(this.props.match.params.recipeId)
            this.props.clearSearch();
        }
    }

    handleSave(recipe) {
        if (recipe.saveId) {
            this.props.deleteThisSave(recipe.saveId)
        } else {
            this.props.saveThisRecipe(recipe.id)
        }
    }


    render() {
        let { recipe, currentUser, comments, addComment, updateCurrComment, deleteCurrComment } = this.props;
        if (!recipe || !recipe.ingredients) return null
        return (
            <div className='recipe-show-outer-container'>
                <div className='recipe-show-container'>
                    <div className='recipe-show-head-photo'>
                        <div className='recipe-show-header'>
                            <h1 className='recipe-show-title'>{recipe.dish_name}</h1>
                            <div className='recipe-show-spacer'></div>
                            <p className='recipe-show-author'>By <span className='recipe-author'>{recipe.author}</span></p>
                        </div>
                        <div className='recipe-show-photo-box'>
                            <img className="recipe-show-photo" src={recipe.photoUrl} />
                        </div>
                    </div>
                    <div className='recipe-time-description'>
                        <div className='recipe-time-box'>
                            <div className='recipe-time-inner-box'>
                                <span className='recipe-time-bolded'>Time</span>
                                <span className='recipe-time'>{recipe.cook_time}</span>
                            </div>
                            <div className='outer-bookmark'>
                                <button className='save-recipe-btn recipe-page-btn' onClick={() => this.handleSave(recipe)} >
                                    <div className='splash-outer-bookmark bookmark-outer-recipe'>
                                        <div className={recipe.saveId ? 'splash-bookmark bookmark-recipe bookmark-recipe-saved' : 'splash-bookmark bookmark-recipe'} />
                                    </div>
                                    <p className='splash-bookmark-text'>{recipe.saveId ? 'Saved' : 'Save'}</p>
                                </button>
                            </div>
                        </div>
                        <div className='recipe-description'>
                            <p className='recipe-show-description'>{recipe.description}</p>
                        </div>
                    </div>
                    <div className='recipe-show-steps-ingredients-box'>
                        <div className='recipe-show-ingredients-list'>
                            <IngredientList key={recipe.id} ingredients={Object.values(recipe.ingredients)} recipe={recipe}/>
                        </div>
                        <div className='recipe-show-steps-list'>
                            <div className='steps-list'>
                                <StepList key={recipe.id} steps={Object.values(recipe.steps)} />
                            </div>
                        </div>
                    </div>
                    <div className='comments-outer-container'>
                        <div className='comments-spacer' />
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