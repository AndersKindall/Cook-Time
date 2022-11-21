import SearchRecipes from "./search_recipes";
import { connect } from "react-redux";
import { openModal, closeModal} from '../../actions/modal_actions';
import { clearSearch, searchPage, clearSearchPage } from "../../actions/recipe_actions";
import { getAllRecipes } from "../../actions/recipe_actions";
import { saveThisRecipe, deleteThisSave } from "../../actions/save_actions";

const mapStateToProps = state => {
    return {
        recipes: Object.values(state.entities.recipes),
        currentUser: window.currentUser,
        searches: Object.values(state.entities.searchPage)
    }
}

const mapDispatchToProps = dispatch => ({
    getAllRecipes: (() => dispatch(getAllRecipes())),
    openModal: modal => dispatch(openModal(modal)),
    closeModal: () => dispatch(closeModal()),
    clearSearch: () => dispatch(clearSearch()),
    searchPage: (query) => dispatch(searchPage(query)),
    clearSearchPage: () => dispatch(clearSearchPage()),
    saveThisRecipe: (recipeId) => dispatch(saveThisRecipe(recipeId)),
    deleteThisRecipe: (recipeId) => dispatch(deleteThisSave(recipeId))
})

export default connect(mapStateToProps, mapDispatchToProps)(SearchRecipes);