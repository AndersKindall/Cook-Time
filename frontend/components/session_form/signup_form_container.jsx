import { connect } from 'react-redux';
import React from 'react';
import { login, signup, clearErrors } from '../../actions/session_actions';
import { openModal, closeModal  } from '../../actions/modal_actions';

import SessionForm from './session_form';

const mapStateToProps = ({ errors }) => {
    return {
        errors: errors.session,
        formType: 'signup'
    };
};

const mapDispatchToProps = dispatch => {
    return {
        login: (user) => dispatch(login(user)),
        action: (user) => dispatch(signup(user)),
        openModal : (modal) => dispatch(openModal(modal)),
        closeModal: () => dispatch(closeModal()),
        clearErrors: () => dispatch(clearErrors())
    };
};

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);