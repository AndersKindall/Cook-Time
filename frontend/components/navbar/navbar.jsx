import React from 'react';
import { Link } from 'react-router-dom'; 

const NavBar = ({ currentUser, logout, openModal }) => {


    const sessionLink = () => (
        <nav className='login-logout'>
            <button className='login-button' onClick={() => openModal('login')}>
                <p className='login-recipe-box'>Your Recipe Box</p>
                <p className='login-login'>Log In</p>
            </button>

        </nav>
    );

    const logoutButton = () => (
        <nav className='logout-recipe-box'>
            
            <Link className="logout-recipe-box-link" to={`/recipes`}>
                All Recipes        
            </Link>
            <button className="logout-button" onClick={logout}>Log Out</button>
        </nav>
    )

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
    );
};

export default NavBar;


