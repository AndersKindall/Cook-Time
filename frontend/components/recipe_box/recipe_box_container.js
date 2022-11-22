import RecipeBox from "./recipe_box";
import { connect } from "react-redux";
import { saveThisRecipe, deleteThisSave } from "../../actions/save_actions";
import { getThisUser } from "../../actions/user_actions";
import { openModal } from "../../actions/modal_actions";
import { getAllRecipes, getRecipe, clearSearch } from "../../actions/recipe_actions";

const mapStateToProps = state => ({
    saves: Object.values(state.entities.saves),
    recipes: state.entities.recipes,
    currentUser: state.session.currentUser,
    isModalOpen: Boolean(state.ui.modal)
})

const mapDispatchToProps = dispatch => ({
    saveThisRecipe: (recipeId) => dispatch(saveThisRecipe(recipeId)),
    deleteThisSave: (saveId) => dispatch(deleteThisSave(saveId)),
    getThisUser: (userId) => dispatch(getThisUser(userId)),
    openModal: (modal) => dispatch(openModal(modal)),
    getAllRecipes: () => dispatch(getAllRecipes()),
    getRecipe: (recipeId) => dispatch(getRecipe(recipeId)),
    clearSearch: () => dispatch(clearSearch())
})

export default connect(mapStateToProps, mapDispatchToProps)(RecipeBox);
