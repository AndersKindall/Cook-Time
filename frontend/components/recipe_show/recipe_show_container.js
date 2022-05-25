import { connect } from 'react-redux';

import { getRecipe } from "../../actions/recipe_actions";
import { addComment, updateCurrComment, deleteCurrComment } from '../../actions/comment_actions';
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
    deleteCurrComment: (commentId => dispatch(deleteCurrComment(commentId)))
})

export default connect(mapStateToProps, mapDispatchToProps)(RecipeShow)