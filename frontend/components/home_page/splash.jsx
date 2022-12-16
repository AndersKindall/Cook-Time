import React from "react";

class Splash extends React.Component {
    constructor(props) {
        super(props);
    }

    render() {
        let {recipe} = this.props
        return (
            <div className="splash-container" >
                <img className="splash-photo" src={window.splashImg} alt="" />
                <p className="recipe-otd">Recipe <br />of the day</p>
                <div className="splash-recipe">
                    <h1 className="splash-title" >{recipe.dish_name}</h1>
                    <p className="splash-description">A bright, spicy egg dish for breakfast, lunch or dinner.</p>
                    <p className="splash-author">{recipe.author}</p>
                </div>
            </div>
        )
    }
}

export default Splash;