import React from 'react';
import { closeModal } from '../../actions/modal_actions';
import { connect } from 'react-redux';
import LoginFormContainer from '../session_form/login_form_container';
import SignupFormContainer from '../session_form/signup_form_container';

function Modal({modal, closeModal}) {
  if (!modal) {
    return null;
  }
  let component;
  switch (modal) {
    case 'login':
      component = <LoginFormContainer />;
      break;
    case 'signup':
      component = <SignupFormContainer />;
      break;
    default:
      return null;
  }
  return (      
      <div>
        { (location === '#/') ?
        <div className="modal-background" onClick={closeModal}>
          <div className="modal-child" onClick={(e) => e.stopPropagation()}>
            <div className='modal-image-tag'>
                <img className='modal-image' src={window.modalImg} alt='chocolate souffle' />
                <p className='modal-image-text'>Unlock CookTime recipes and your <br />personal recipe box with a free account.</p>
            </div>
            { component }
          </div>
        </div>
        :
        <div className="modal-background" onClick={closeModal}>
          <div className="modal-child">
            <div className='modal-image-tag'>
                <img className='modal-image' src={window.modalImg} alt='chocolate souffle' />
                <p className='modal-image-text'>Unlock CookTime recipes and your <br />personal recipe box with a free account.</p>
            </div>
            { component }
          </div>
        </div>
        }
      </div>
  );
}

const mapStateToProps = state => {
  return {
    modal: state.ui.modal,
    location: window.location.hash
  };
};

const mapDispatchToProps = dispatch => {
  return {
    closeModal: () => dispatch(closeModal())
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(Modal);