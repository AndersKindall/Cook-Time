import { connect } from 'react-redux';
import React from 'react';
import { login, clearErrors } from '../../actions/session_actions';
import { openModal, closeModal } from '../../actions/modal_actions'
import SessionForm from './session_form'

const mapStateToProps = ({ errors }) => {
    return {
        errors: errors.session,
        formType: 'login'
    };
};

const mapDispatchToProps = dispatch => {
    return {
        action: (user) => dispatch(login(user)),
        openModal : (modal) => dispatch(openModal(modal)),
        closeModal: () => dispatch(closeModal()),
        clearErrors: () => dispatch(clearErrors())
    };
};

export default connect(mapStateToProps, mapDispatchToProps)(SessionForm);