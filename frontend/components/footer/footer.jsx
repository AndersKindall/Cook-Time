import React from 'react';

const Footer = () => {
    return (
        <div className='main-footer-container'>
            <div className='home-footer'>
                <h1 className='footer-title'>ABOUT US</h1>
                <p className='home-about-text'>CookTime is a clone of NYT Cooking by the New York Times.  It was created with by Anders Kindall, a software developer and home cook based in San Francisco who carefully tested out each and every recipe on this site.</p>
            </div>
            <div className='learn-more'>
                <h1 className='footer-title'>LEARN MORE</h1>
                <ul className='home-learn-text'>
                    <a target='_blank' href='https://cooking.nytimes.com/' className='footer-links'>NYT Cooking Website</a>
                    <a target='_blank' href='https://github.com/AndersKindall/Cook-Time' className='footer-links'>
                        <i class="fa-brands fa-github"/>
                    </a>
                    <a target='_blank' href='https://www.linkedin.com/in/anders-kindall-175422216/' className='footer-links'>
                        <i class="fa-brands fa-linkedin"/>
                    </a>
                    <a target='_blank' href='https://angel.co/u/anders-kindall' className='footer-links'>
                        <i class="fa-brands fa-angellist"/>
                    </a>
                </ul>
            </div>
        </div>
    )
}

export default Footer;