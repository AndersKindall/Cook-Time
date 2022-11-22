import React from 'react';
import { Link } from 'react-router-dom';

class RecipeIndexCard extends React.Component {

    constructor(props) {
        super(props);
        // this.state = {
        //     className: 'fal fa-bookmark'
        // }
        this.handleSave = this.handleSave.bind(this);
        // this.toggleModal = this.toggleModal.bind(this);
        // this.handleClick = this.handleClick.bind(this);
    }

    handleSave(recipe) { 
        if (recipe.saveId) {
            this.props.deleteThisSave(recipe.saveId);
        } else {
            this.props.saveThisRecipe(recipe.id)
        }
    }

    // toggleModal() {
    //     let newClass = (this.state.className === 'modal-save-background') ? 'modal-save-background-closed' : 'modal-save-background'
    //     this.setState({ className: newClass })
    // }

    // handleClick(recipe) {
    //     this.props.deleteThisSave(recipe.saveId);
    //     this.toggleModal()
    // }

    render() {
        let { recipe, currentUser, openModal } = this.props;
        return (
            <div className='recipe-card-box' >
                <div className='recipe-card-border'>
                    <Link className='recipe-card-show-link' to={`/recipes/${recipe.id}`} >
                        <img className="recipe-card-photo" src={recipe.photoUrl} />
                        <div className='recipe-card-content'>
                            <p className='recipe-card-dishname' >{recipe.dish_name}</p>
                            <p className='recipe-card-author' >{recipe.author}</p>
                        </div>
                        <div className="recipe-card-footer">
                            {recipe.cook_time}
                        </div>
                    </Link>
                    <div className='recipe-card-bookmark-container'>
                    {/* <FontAwesomeIcon icon="fal fa-bookmark" onClick={currentUser ? (recipe) => this.handleSave(recipe) : () => {} }/>                         */}
                    <i className="fa-solid fa-bookmark" onClick={currentUser ? this.handleSave(recipe) : () => {} }></i>
                    {/* Refactor modal */}
                    {/* {currentUser ? '' :
                        <div className='recipe-card-popup' >
                            <div className='recipe-card-popup-spacer' />
                            <div className='recipe-card-popup-text' >
                                <span onClick={() => openModal('login')} className='login-popip-lin'>Log In</span>
                                <p>or</p>
                                <span onClick={() => openModal('signup')} className='login-popip-lin'>Sign Up </span>
                                to save this recipe.
                            </div>
                        </div>
                    }    */}
                    {/* {currentUser ?
                        <div className={recipe.saveId ? 'recipe-card-bookmark recipe-card-bookmark-saved' : 'recipe-card-bookmark'} />
                        :
                        <div className='recipe-card-bookmark'/>
                    } */}
                    </div>
                </div>
                {/* Refactor Modal */}
                {/* <div className={this.state.className} onClick={this.toggleModal}>
                    <div className='modal-save-child' onClick={e => e.stopPropagation()}>
                        <span className='close-modal-btn' onClick={this.toggleModal}>&#x2715;</span>
                        <div className='modal-save-body'>
                            <p className='modal-image-text'>Are you sure you want to remove <span className='modal-save-title'>{recipe.title}</span> from ypur recipe box?</p>
                            <div className='modal-save-btns'>
                                <button type='button' onClick={this.toggleModal} className='modal-save-no'>NO</button>
                                <button type='button' onClick={() => this.handleClick(recipe)} className='modal-save-yes'>YES</button>
                            </div>
                        </div>
                    </div>
                </div> */}
            </div>
        )
    }
}

export default RecipeIndexCard;