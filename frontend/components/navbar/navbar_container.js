import { connect } from 'react-redux';

import { logout } from '../../actions/session_actions';
import { closeModal, openModal } from '../../actions/modal_actions';
import { search, clearSearch } from '../../actions/recipe_actions';
import NavBar from './navbar';

const mapStateToProps = ({ session }) => {
    return {
        currentUser: session.currentUser,
        searches: state.entities.search,
    };
};

const mapDispatchToProps = dispatch => ({
    logout: () => dispatch(logout()),
    openModal: modal => dispatch(openModal(modal)),
    closeModal: () => dispatch(closeModal()),
    search: (query) => dispatch(search(query)),
    clearSearch: () => dispatch(clearSearch())
});

export default connect(mapStateToProps, mapDispatchToProps)(NavBar);