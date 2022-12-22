import React from 'react';
import { shallowEqual } from 'react-redux';

class SessionForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            username: '',
            email: '',
            password: '',
        };
        this.loginDemoUser = this.loginDemoUser.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
        this.update = this.update.bind(this)
    }

    componentDidMount() {
        this.props.clearErrors();
    }

    update(field) {
        return e => this.setState({
            [field]: e.target.value
        });
    }

    loginDemoUser(e) {
        e.preventDefault();
        this.props.closeModal();
        this.props.action({ email: 'akindall47@gmail.com', password: '123456' })
    }

    handleSubmit(e) {
        e.preventDefault();
        const user = Object.assign({}, this.state);
        this.props.action(user).then(this.props.closeModal);
    }

    render() {
        return (
            <form onSubmit={this.handleSubmit} className="modal-form-box">
                <h1 className='modal-form-header'>{ this.props.formType === 'login' ? 'Log In to Cook Time' : 'Sign Up for Cook Time' }</h1>
                <div onClick={this.props.closeModal} className="close-modal-btn">
                    <i className='fas fa-times'/>
                </div>
                <div className='modal-submit-btn'>
                    <input type='submit' value="Log In as Demo User" className='btn demo-btn' onClick={this.loginDemoUser} />
                </div>
                <div className='modal-line-break'>Or use your email</div>
                {this.props.formType === 'signup' ?
                    <label className='modal-input-box' >
                        <h2 className='modal-input-box-text'>Username</h2>
                        <input 
                            type='text'
                            value={this.state.username}
                            className={this.props.errors.length > 0 ? 'modal-input-red' : 'modal-input'}
                            onChange={this.update('username')}
                        />
                        {this.props.errors.map(err => err.includes('Username')? <p className='modal-errors' key={Math.random()}>Please enter a username.</p> : '')}
                    </label>
                    : ''
                }
                <label className='modal-input-box' >
                    <h2 className='modal-input-box-text'>Email Address</h2>
                    <input 
                        type='text'
                        value={this.state.email}
                        className={this.props.errors.length > 0 ? 'modal-input-red' : 'modal-input'}
                        onChange={this.update('email')}
                    />
                    {this.props.errors.map(err => err.includes(`Email is invalid`)? <p className='modal-errors' key={Math.random()}>Please enter a valid email address.</p> : '')}
                    {this.props.errors.map(err => err.includes(`Email can't be blank`)? <p className='modal-errors' key={Math.random()}>Please enter a valid email address.</p> : '')}
                    {this.props.errors.map(err => err.includes(`Email has already been taken`)? <p className='modal-errors' key={Math.random()}>{err}</p> : '')}
                </label>
                <label className='modal-input-box' >
                        <h2 className='modal-input-box-text'>Password</h2>
                        <input 
                            type='password'
                            value={this.state.password}
                            className={this.props.errors.length > 0 ? 'modal-input-red modal-password-input' : 'modal-input modal-password-input'}
                            onChange={this.update('password')}
                        />
                        {this.props.errors.map(err => err.includes('short') ? <p className='modal-password-errors' key={Math.random()}>Password must be longer than 6 characters.</p> : '')}
                </label>
                <div className='modal-session-submit-button'>
                    <input type='submit' value={this.props.formType === 'login' ? "Log In" : "Create Account"} className='btn modal-btn'/>
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