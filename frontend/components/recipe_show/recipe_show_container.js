import { connect } from 'react-redux';

import { getRecipe, clearSearch } from "../../actions/recipe_actions";
import { addComment, updateCurrComment, deleteCurrComment } from '../../actions/comment_actions';
import { saveThisRecipe, deleteThisSave } from '../../actions/save_actions';
import { openModal, closeModal } from '../../actions/modal_actions';
import { addRating, updateThisRating, deleteThisRating } from '../../actions/rating_actions';
import RecipeShow from "./recipe_show";

const mapStateToProps = (state, ownProps) => ({
    recipe: state.entities.recipes[ownProps.match.params.recipeId],
    comments: Object.values(state.entities.comments),
    currentUser: state.session.currentUser, 
    ratings: Object.values(state.entities.ratings)
})

const mapDispatchToProps = dispatch => ({
    getRecipe: (recipeId => dispatch(getRecipe(recipeId))), 
    addComment: ((recipeId, content) => dispatch(addComment(recipeId, content))),
    updateCurrComment: ((commentId, content) => dispatch(updateCurrComment(commentId, content))),
    deleteCurrComment: (commentId => dispatch(deleteCurrComment(commentId))), 
    openModal: (modal) => dispatch(openModal(modal)),
    closeModal: () => dispatch(closeModal()),
    saveThisRecipe: (recipeId) => dispatch(saveThisRecipe(recipeId)),
    deleteThisSave: (save_id) => dispatch(deleteThisSave(save_id)),
    clearSearch: () => dispatch(clearSearch()),
    addRating: ((recipeId, ratingValue) => dispatch(addRating(recipeId, ratingValue))),
    updateThisRating: ((ratingId, ratingValue) => dispatch(updateThisRating(ratingId, ratingValue))),
    deleteThisRating: (ratingId => dispatch(deleteThisRating(ratingId))) 
})

export default connect(mapStateToProps, mapDispatchToProps)(RecipeShow)