import React from 'react';
import { Link } from 'react-router-dom';

class RecipeIndexCard extends React.Component {

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
                </div>
            </div>
        )
    }
}

export default RecipeIndexCard;