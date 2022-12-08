import React from 'react';
import { Link } from 'react-router-dom'; 
import { search } from '../../actions/recipe_actions';

class NavBar extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            show: false,
            className: 'search-dropdown-text',
            inputValue: ''
        }
        this.showDropdown = this.showDropdown.bind(this);
        this.hideDropdown = this.hideDropdown.bind(this);
        this.handleChange = this.handleChange.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
    }

    componentDidUpdate(oldProps) {
        if (this.props.location.pathname !== oldProps.location.pathname) {
            this.props.clearSearch();
            this.setState( {inputValue: '', show: false });
        }
    }

    showDropdown(e) {
        e.preventDefault();
        this.setState( {show: true})
    }

    hideDropdown(e) {
        e.preventDefault();
        this.setState({ show: false })
        this.props.clearSearch();
        this.setState({ inputValue: ''});
    }

    handleChange(e) {
        let input = e.target.value;
        this.setState({inputValue: input})
        if (input === '') {
            this.props.clearSearch();
        } else {
            Object.values(this.props.search(input));
        }

    }

    handleSubmit(e) {
        if (this.state.inputValue === '') {
            this.props.history.push({ pathname: `/recipes/`})
        } else {
            this.props.history.push({pathname: `/search/${this.state.inputValue}`})
        }
        this.setState({ inputValue: ''})
        this.props.clearSearch();
    }

    render() {
        const { currentUser, logout, searches } = this.props;
        return (
            <header className="nav-header">
                <nav className="main-nav-container">
                    <div className="home-link">
                        <Link className="inner-home-link" to="/" >
                            <img className="logo" src={window.logo}></img>
                        </Link>
                    </div>
                    <div className='nav-bar-search'>
                        <i className="fas fa-search search-icon"></i>
                        <form className='search-bar' onSubmit={this.handleSubmit}>
                            <input onClick={this.showDropdown} onChange={this.handleChange} value={this.state.inputValue} type='text' className='search-input' placeholder='What would you like to cook?' />
                        </form>
                        <i onClick={this.hideDropdown} className={this.state.show ? "fas fa-times-circle" : ''}></i>
                        {!searches ?
                            '' :
                            <ul className='dropdown-search-results'>
                                {Object.values(searches).map((recipe, idx) => (
                                    <Link key={idx} to={`/recipes/${recipe.id}`} className='search-results-wrapper' style={{textDecoration: 'none'}}>
                                        <li className='search-results-child'>
                                            {/* resize photo */}
                                            {/* <img className='dropdown-photo' src={recipe.photoUrl}/> */}
                                            {recipe.dish_name}
                                        </li>
                                    </Link>
                                )
                                )}
                            </ul>
                        }
                    </div>
                    <div className='navbar-end'>
                            <div className='login-recipe-box' onClick={currentUser ? () => {} : () => this.props.openModal('login')}>
                                <div className='login-logout-spacer'/>
                                {currentUser ? 
                                    <Link to={`/recipes`} style={{ textDecoration: 'none'}}>
                                        <p className={this.props.location.pathname.includes('recipebox') ? 'recipe-box-show' : 'recipe-box-text'}>All Recipes</p>
                                    </Link>
                                :
                                    <div className='login-recipe-box-container'>
                                        <p className='recipe-box-text'>All Recipes</p>
                                        <p className='recipe-box-login'>Log In</p>
                                    </div>
                                }
                            </div>
                            <div className='nav-bar-dropdown'>
                                <i className="fa-solid fa-gear gear-icon"></i>
                                <div className='nav-bar-dropdown-spacer' />
                                {currentUser ? 
                                    <button className='nav-bar-dropdown-show' onClick={logout}>Log Out</button> :
                                    <button className='nav-bar-dropdown-show' onClick={() => this.props.openModal('login')}>Log In</button>
                                }
                            </div>
                    </div>
                </nav>
        </header>  
        )
    }
}

export default NavBar;


