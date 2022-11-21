import { connect } from 'react-redux';

import { getAllRecipes, clearSearch } from '../../actions/recipe_actions';
import { openModal, closeModal } from '../../actions/modal_actions';
import { saveThisRecipe, deleteThisSave } from '../../actions/save_actions';
import RecipeIndex from './recipe_index';

const mapStateToProps = state => {
    return {
        recipes: Object.values(state.entities.recipes),
        currentUser: window.currentUser,
        isModalOpen: Boolean(state.ui.modal)
    }
}

const mapDispatchToProps = dispatch => ({
    getAllRecipes: (() => dispatch(getAllRecipes())),
    openModal: modal => dispatch(openModal(modal)),
    closeModal: () => dispatch(closeModal()),
    clearSearch: () => dispatch(clearSearch()),
    saveThisRecipe: (recipeId) => dispatch(saveThisRecipe(recipeId)),
    deleteThisRecipe: (recipeId) => dispatch(deleteThisSave(recipeId))
});

export default connect(mapStateToProps, mapDispatchToProps)(RecipeIndex)