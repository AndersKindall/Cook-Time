import { connect } from 'react-redux';

import { getAllRecipes } from '../../actions/recipe_actions';
import { openModal } from '../../actions/modal_actions';
import RecipeIndex from './recipe_index';

const mapStateToProps = state => {
    return {
        recipes: Object.values(state.entities.recipes),
        currentUser: window.currentUser
    }
}

const mapDispatchToProps = dispatch => ({
    getAllRecipes: (() => dispatch(getAllRecipes())),
    openModal: modal => dispatch(openModal(modal))
});

export default connect(mapStateToProps, mapDispatchToProps)(RecipeIndex)