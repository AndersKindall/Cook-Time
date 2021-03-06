import React from 'react';

class IngredientList extends React.Component {
    
    render() {
        let { ingredients } = this.props;

        return (
            <div className='ingredients-box'>
                <h1 className='ingredients-title'>INGREDIENTS</h1>
                <ul className='ingredients-list'>
                    {
                        ingredients.map((ingredient) => {
                            return (<li className='ingredients-list-item'>
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