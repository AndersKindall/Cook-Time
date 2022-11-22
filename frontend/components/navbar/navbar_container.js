import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import { logout } from '../../actions/session_actions';
import { closeModal, openModal } from '../../actions/modal_actions';
import { search, clearSearch } from '../../actions/recipe_actions';
import { saveThisRecipe, deleteThisSave } from '../../actions/save_actions';
import NavBar from './navbar';

const mapStateToProps = state => {
    return {
        currentUser: state.session.currentUser,
        searches: state.entities.search,
    };
};

const mapDispatchToProps = dispatch => ({
    logout: () => dispatch(logout()),
    openModal: modal => dispatch(openModal(modal)),
    closeModal: () => dispatch(closeModal()),
    search: (query) => dispatch(search(query)),
    clearSearch: () => dispatch(clearSearch()),
    saveThisRecipe: () => dispatch(saveThisRecipe(recipeId)),
    deleteThisSave: () => dispatch(deleteThisSave(recipeId))
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(NavBar));