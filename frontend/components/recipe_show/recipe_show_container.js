import { connect } from 'react-redux';

import { getRecipe, clearSearch } from "../../actions/recipe_actions";
import { addComment, updateCurrComment, deleteCurrComment } from '../../actions/comment_actions';
import { saveThisRecipe, deleteThisSave } from '../../actions/save_actions';
import { openModal } from '../../actions/modal_actions';
import RecipeShow from "./recipe_show"

const mapStateToProps = (state, ownProps) => ({
    recipe: state.entities.recipes[ownProps.match.params.recipeId],
    comments: Object.values(state.entities.comments),
    currentUser: state.session.currentUser
})

const mapDispatchToProps = dispatch => ({
    getRecipe: (recipeId => dispatch(getRecipe(recipeId))), 
    addComment: ((recipeId, content) => dispatch(addComment(recipeId, content))),
    updateCurrComment: ((commentId, content) => dispatch(updateCurrComment(commentId, content))),
    deleteCurrComment: (commentId => dispatch(deleteCurrComment(commentId))), 
    openModal: (modal) => dispatch(openModal(modal)),
    saveThisRecipe: (recipeId) => dispatch(saveThisRecipe(recipeId)),
    deleteThisSave: (recipeId) => dispatch(deleteThisSave(recipeId)),
    clearSearch: () => dispatch(clearSearch())
})

export default connect(mapStateToProps, mapDispatchToProps)(RecipeShow)