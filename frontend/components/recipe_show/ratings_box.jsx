import React from "react";

class RatingsBox extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            ratingVal: 0
        }

        this.handleChange = this.handleChange.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
        this.clearRating = this.clearRating.bind(this);
        this.averageRating = this.averageRating.bind(this)
        
    }

    handleChange(e) {
       let newRatingVal = e.target.value;
       this.setState({ ratingVal: newRatingVal}) 
    }

    handleSubmit(e) {
        e.preventDefault();
        this.props(addRating(this.props.recipe.id, this.state.ratingVal))
    }

    clearRating(e) {
        this.setState({ ratingVal: 0 })
    }

    averageRating(ratings) {
        let total = 0;
        ratings.map(rating => (total += rating.rating_value))
        return Math.ceil(total/(ratings.length))
    }

    render() {
        let { ratings, updateThisRating, deleteThisRating, currentUser } = this.props;
        return (
            <div className='ratings-outer-box'>
                <h1 className='ratings-head'>Ratings</h1>
                <div className='ratings-avg'>
                    <div className='ratings-avg-star-large'>&#9733;</div>
                    <div className='ratings-avg-text'>
                        <p className='ratings-avg-text-bolded'>{this.averageRating(ratings)} out of 5</p>
                        <p className='ratings-avg-text-light'>{ratings.length} user ratings</p>
                    </div>
                </div>
                <div className="ratings-input-box">
                    <p className="ratings-input-text">Your rating</p>
                    <div className="ratings-input">
                        
                    </div>
                </div>
            </div>

        )
    }
};

export default RatingsBox;