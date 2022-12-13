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
        let { ratings, updateThisRating, deleteThisRating } = this.props;
        return (
            <div className='ratings-outer-box'>
                <h1 className='ratings-head'>Ratings</h1>
            </div>

        )
    }
};

export default RatingsBox;