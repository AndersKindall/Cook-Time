import React from 'react';

const Footer = () => {
    return (
        <div className='main-footer-container'>
            <div className='about-us'>
                <h1 className='footer-title'>ABOUT US</h1>
                <p className='home-about-text'>CookTime is a clone of the New York Times Cooking Website created by Anders Kindall, a software developer and avid home cook based in San Francisco.  Each recipe was borrowed from the real NYT Cooking and was carefully tested out in the developer's home kitchen.</p>
            </div>
            <div className='learn-more'>
                <h1 className='footer-title'>LEARN MORE</h1>
                <ul className='home-learn-text'>
                    <a target='_blank' href='https://cooking.nytimes.com/' className='footer-links'>NYT Cooking Website</a>
                    <a target='_blank' href='https://github.com/AndersKindall/Cook-Time' className='footer-links icons'>
                        <i className="fa-brands fa-github"/>
                    </a>
                    <a target='_blank' href='https://www.linkedin.com/in/anders-kindall-175422216/' className='footer-links icons'>
                        <i className="fa-brands fa-linkedin"/>
                    </a>
                    <a target='_blank' href='https://angel.co/u/anders-kindall' className='footer-links icons'>
                        <i className="fa-brands fa-angellist"/>
                    </a>
                </ul>
            </div>
        </div>
    )
}

export default Footer;