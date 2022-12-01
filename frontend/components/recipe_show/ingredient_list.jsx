import React from 'react';

class IngredientList extends React.Component {
    
    render() {
        let { ingredients, recipe } = this.props;
        return (
            <div className='ingredients-box'>
                <h1 className='ingredients-title'>INGREDIENTS</h1>
                <div className='recipe-yield-box'>
                    <span className='recipe-yield-bolded'>Yield: </span>
                    <span className='recipe-yield'>{recipe.yield}</span>
                </div>
                <ul className='ingredients-list'>
                    {
                        ingredients.map((ingredient, idx) => {
                            return (<li className='ingredients-list-item' key={idx}>
                                        <span className='ingredients-amount'>{ingredient.amount}   </span>
                                        <span className='ingredients-name'>{ingredient.ingredient_name}</span>
                                    </li>)
                        })
                    }
                </ul>

            </div>
        )
    }
}

export default IngredientList;