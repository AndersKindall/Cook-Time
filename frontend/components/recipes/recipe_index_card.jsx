import React from 'react';
import { Link } from 'react-router-dom';

class RecipeIndexCard extends React.Component {

    constructor(props) {
        super(props);
        this.state = {
            className: 'modal-save-background-closed'
        }
        this.handleSave = this.handleSave.bind(this);
        this.toggleModal = this.toggleModal.bind(this);
        this.handleClick = this.handleClick.bind(this);
    }

    handleSave(recipe) { 
        if (recipe.saveId) {
            this.toggleModal();
        } else {
            this.props.saveThisRecipe(recipe.id)
        }
    }

    toggleModal() {
        let newClass = (this.state.className === 'modal-save-background') ? 'modal-save-background-closed' : 'modal-save-background'
        this.setState({ className: newClass })
    }

    handleClick(recipe) {
        this.props.deleteThisSave(recipe.saveId);
        this.toggleModal()
    }

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
                    <div className='recipe-card-bookmark-container' onClick={currentUser ? () => this.handleSave(recipe) : () => {}} >
                    {currentUser ? '' :
                        <div className='recipe-card-pop-up' >
                            <div className='recipe-card-pop-up-spacer' />
                            <div className='recipe-card-pop-up-text' >
                                {/* <span onClick={() => openModal('login')}></span> */}
                            </div>
                        </div>
                    }   
                    </div>
                </div>
            </div>
        )
    }
}

export default RecipeIndexCard;