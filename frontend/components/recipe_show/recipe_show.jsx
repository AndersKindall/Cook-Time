import React from 'react'
import IngredientList from './ingredient_list';
import StepList from './steps_list';
import CommentsBox from './comments_box';
import RatingsBox from './ratings_box';

class RecipeShow extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            avgRating: null
        }
        this.averageRating = this.averageRating.bind(this);
        this.getNumRatings = this.getNumRatings.bind(this);

    }

    componentDidMount() {
        this.props.getRecipe(this.props.match.params.recipeId);
        this.props.clearSearch();
        window.scrollTo(0, 0);
    }

    componentDidUpdate(oldProps) {
        if (this.props.match.params.recipeId !== oldProps.match.params.recipeId) {
            this.props.getRecipe(this.props.match.params.recipeId);
            this.props.clearSearch();
        }
    }

    averageRating(ratings) {
        let total = 0;
        let count = 0;
        ratings.map(rating =>  {
            if (rating.recipe_id === this.props.recipe.id) {
                total += rating.rating_value
                count += 1
            }
        })
        return Math.ceil(total/(count))
    }

    getNumRatings(ratings) {
        let total = 0;
        ratings.map(rating =>  {
            if (rating.recipe_id === this.props.recipe.id) {
                total += 1
            }
        })
        return total;
    }

    render() {
        let { recipe, currentUser, comments, addComment, updateCurrComment, deleteCurrComment, ratings, addRating, updateThisRating, deleteThisRating } = this.props;
        let numRatings = this.getNumRatings(ratings);
        if (!recipe || !recipe.ingredients) return null;
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
                        <div className='recipe-time-rating-box'>
                            <div className='recipe-time-inner-box'>
                                <span className='recipe-time-bolded'>Time</span>
                                <span className='recipe-time'>{recipe.cook_time}</span>
                            </div>
                            <div className='average-rating-box'>
                                <span className='average-rating-bolded'>Rating</span>
                                {numRatings === 0 ? 
                                    <div className='average-rating-empty'>
                                        <div className='star-rating'>
                                            {[...Array(5)].map((star, i) => {
                                                i += 1
                                                return (
                                                    <span className='average-star-off' key={i}>&#9733;</span>
                                                )
                                            })}
                                            <span className='average-rating-amount'>(No Ratings Yet)</span>
                                        </div>
                                    </div>
                                :
                                    <div className='average-rating-filled'>
                                        <div className='star-rating'>
                                            <span className='average-rating-value'>{this.averageRating(ratings)}</span>
                                            {[...Array(5)].map((star, i) => {
                                                i += 1
                                                return (
                                                    <span className={i <= this.averageRating(ratings) ? 'average-star-on' : 'average-star-off'} key={i}>&#9733;</span>
                                                )
                                            })}
                                            <span className='average-rating-amount'>({numRatings})</span>
                                        </div>
                                    </div>
                                }
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
                    <div className='comments-ratings-outer-container'>
                        <div className='ratings-container'>
                            <RatingsBox recipe={recipe} ratings={ratings} addRating={addRating} updateThisRating={updateThisRating} deleteThisRating={deleteThisRating} currentUser={currentUser} />
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