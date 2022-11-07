import React from 'react';
import { Link } from 'react-router-dom'; 

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
            this.props.history.push({ pathname: `/recipes/`};)
        } else {
            this.props.history.push({pathname: `/search/${this.setState.inputValue}`})
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
                <i className="fas fa-search search-icon"></i>
                <div className="search-bar-container">What would you like to cook?</div>
                {currentUser ? logoutButton(currentUser, logout) : sessionLink()}
                <i className="fa-solid fa-gear gear-icon"></i>
            </nav>
        </header>  
        )
    }
}
// const NavBar = ({ currentUser, logout, openModal, search, clearSearch }) => {


//     const sessionLink = () => (
//         <nav className='login-logout'>
//             <button className='login-button' onClick={() => openModal('login')}>
//                 <p className='login-recipe-box'>Your Recipe Box</p>
//                 <p className='login-login'>Log In</p>
//             </button>

//         </nav>
//     );

//     const logoutButton = () => (
//         <nav className='logout-recipe-box'>
            
//             <Link className="logout-recipe-box-link" to={`/recipes`}>
//                 All Recipes        
//             </Link>
//             <button className="logout-button" onClick={logout}>Log Out</button>
//         </nav>
//     )

//     const searchBar = () => (
//         <form
//     )

//     return (
        // <header className="nav-header">
        //     <nav className="main-nav-container">
        //         <div className="home-link">
        //             <Link className="inner-home-link" to="/" >
        //                 <img className="logo" src={window.logo}></img>
        //             </Link>
        //         </div>
        //         <i className="fas fa-search search-icon"></i>
        //         <div className="search-bar-container">What would you like to cook?</div>
        //         {currentUser ? logoutButton(currentUser, logout) : sessionLink()}
        //         <i className="fa-solid fa-gear gear-icon"></i>
        //     </nav>
        // </header>  
//     );
// };

export default NavBar;


