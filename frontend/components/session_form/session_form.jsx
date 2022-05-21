import React from 'react';

class SessionForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            username: '',
            email: '',
            password: ''
        };
        this.renderErrors = this.renderErrors.bind(this);
        this.loginDemoUser = this.loginDemoUser.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
    }

    componentDidMount() {
        this.props.clearErrors();
    }

    update(field) {
        return e => this.setState({
            [field]: e.target.value
        });
    }

    renderErrors() {
        return(
            <ul>
              {this.props.errors.map((error, i) => (
                <li key={`error-${i}`}>
                  {error}
                </li>
              ))}
            </ul>
        );
    }

    loginDemoUser(e) {
        e.preventDefault();
        this.props.closeModal();
        this.props.action({ email: 'akindall47@gmail.com', password: '123456' })
    }

    handleSubmit(e) {
        // this.props.closeModal();
        e.preventDefault();
        const user = Object.assign({}, this.state);
        this.props.action(user).then(this.props.closeModal);
    }

    render() {
        return (
            <form onSubmit={this.handleSubmit} className="modal-form-box">
                <h1 className='modal-form-header'>{ this.props.formType === 'login' ? 'Have an account? Log In to Cook Time' : 'Sign Up for Cook Time' }</h1>
                <div onClick={this.props.closeModal} className="close-x">X</div>
                {this.renderErrors()}
                <div className='demo-user-button'>
                    <input type='submit' value="Log In as Demo User" onClick={this.loginDemoUser} />
                </div>
                {this.props.formType === 'signup' ?
                    <label className='modal-input-box' >
                        <h2 className='modal-input-box-text'>Username</h2>
                        <input 
                            type='text'
                            value={this.state.username}
                            onChange={this.update('username')}
                        />
                    </label>
                    : ''
                }
                <label className='modal-input-box' >
                    <h2 className='modal-input-box-text'>Email Address</h2>
                    <input 
                        type='text'
                        value={this.state.email}
                        onChange={this.update('email')}
                    />
                </label>
                <label className='modal-input-box' >
                        <h2 className='modal-input-box-text'>Password</h2>
                        <input 
                            type='password'
                            value={this.state.password}
                            onChange={this.update('password')}
                        />
                </label>
                <div className='modal-session-submit-button'>
                    <input type='submit' value={this.props.formType === 'login' ? "Log In" : "Create Account"} />
                </div>
                <div className='modal-form-change' >
                    <span className='modal-form-change-text'>{this.props.formType === 'login' ? "Create an account " : "Log in " } </span>
                    {this.props.formType === 'login' ? 
                        <button type='button' onClick={() => this.props.openModal('signup')} className='modal-form-change-link'>Here</button> :
                        <button type='button' onClick={() => this.props.openModal('login')} className='modal-form-change-link'>Here</button>
                    }
                </div>
            </form>
        )
    }
}

export default SessionForm;