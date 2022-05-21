import { connect } from 'react-redux';

import { getRecipe } from "../../actions/recipe_actions";
import RecipeShow from "./recipe_show"

const mapStateToProps = (state, ownProps) => ({
    recipe: state.entities.recipes[ownProps.match.params.recipeId]
})

const mapDispatchToProps = dispatch => ({
    getRecipe: (recipeId => dispatch(getRecipe(recipeId)))
})

export default connect(mapStateToProps, mapDispatchToProps)(RecipeShow)