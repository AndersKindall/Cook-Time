import HomePage from "./home_page";
import { connect } from 'react-redux';
import { getAllRecipes, getRecipe, clearSearch } from "../../actions/recipe_actions";
import { saveThisRecipe, deleteThisSave } from "../../actions/save_actions";
import { openModal, closeModal } from "../../actions/modal_actions";
import { selectSplash, selectSuggestions, selectLovedRecipes } from "../../reducers/selector";


const mapStateToProps = state => {
    return {
        recipes: Object.values(state.entities.recipes),
        currentUser: window.currentUser,
        suggestions: selectSuggestions(state),
        loves: selectLovedRecipes(state)
    }
}

const mapDispatchToProps = dispatch => ({
    getAllRecipes: () => dispatch(getAllRecipes()),
    getRecipe: (recipeId) => dispatch(getRecipe(recipeId)),
    clearSearch: () => dispatch(clearSearch()),
    saveThisRecipe: (recipeId) => dispatch(saveThisRecipe(recipeId)),
    deleteThisSave: (saveId) => dispatch(deleteThisSave(saveId)),
    openModal: (modal) => dispatch(openModal(modal)),
    closeModal: () => dispatch(closeModal())
})

export default connect(mapStateToProps, mapDispatchToProps)(HomePage);