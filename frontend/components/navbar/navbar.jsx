import React from 'react';
import { Link } from 'react-router-dom'; 

const NavBar = ({ currentUser, logout, openModal }) => {


    const sessionLink = () => (
        <nav className='login-signup'>
            <button onClick={() => openModal('login')}>
                <p className='login-recipe-box'>Your Recipe Box</p>
                <p className='login-login'>Log In</p>
            </button>
        </nav>
    );

    const logoutButton = () => (
        <nav className='logout-recipe-box'>
            <Link to={`/users/${currentUser.id}`}>Your Recipe Box</Link>
            <button className="logout-button" onClick={logout}>Log Out</button>
        </nav>
    )

    return (
        currentUser ? logoutButton(currentUser, logout) : sessionLink()
    );
};

export default NavBar;


