import HomePage from "./home_page";
import { connect } from 'react-redux';
import { getAllRecipes, getRecipe, clearSearch } from "../../actions/recipe_actions";
import { saveThisRecipe, deleteThisSave } from "../../actions/save_actions";
import { openModal, closeModal } from "../../actions/modal_actions";
import { selectSplash, selectSuggestions, selectLovedRecipes } from "../../reducers/selector";
import modal from "../modal/modal";

const mapStateToProps = state => {
    return {
        currentUser: window.currentUser,
        splashRecipe: selectSplash(state),
        suggestedRecipes: selectSuggestions(state),
        lovedRecipes: selectLovedRecipes(state)
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

export default connect(mapDispatchToProps, mapStateToProps)(HomePage);