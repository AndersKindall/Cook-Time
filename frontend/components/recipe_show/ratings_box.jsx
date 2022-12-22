import React from "react";

class RatingsBox extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            ratingVal: 0,
            avgRatingVal: 0
        }

        this.handleChange = this.handleChange.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
        // this.clearRating = this.clearRating.bind(this);
        this.averageRating = this.averageRating.bind(this);
        this.findUserRating = this.findUserRating.bind(this);
        this.getNumRatings = this.getNumRatings.bind(this);
        
    }

    handleChange(e) {
       let newRatingVal = e.target.value;
       this.setState({ ratingVal: newRatingVal}) 
    }

    handleSubmit(e) {
        e.preventDefault();
        let newRatingVal = e.target.value;
        this.setState({ ratingVal: newRatingVal});
        this.props.addRating(this.props.recipe.id, newRatingVal);
    }

    averageRating(ratings) {
        let total = 0;
        let count = 0;
        ratings.map(rating =>  {
            if (rating.recipe_id === this.props.recipe.id) {
                total += rating.rating_value
                count += 1
            }
        })
        return Math.ceil(total/(count))
    }

    findUserRating(ratings) {
        let userRating = null;
        ratings.map((rating) => {
            if (rating.user_id === this.props.currentUser.id) {
                userRating = rating;  
            }
        })
        return userRating;
    }

    getNumRatings(ratings) {
        let total = 0;
        ratings.map(rating =>  {
            if (rating.recipe_id === this.props.recipe.id) {
                total += 1
            }
        })
        return total;
    }

    render() {
        let { ratings, updateThisRating, deleteThisRating, currentUser } = this.props;
        let userRating = this.state.ratingVal;
        let avgRating = this.state.avgRatingVal;
        ratings ? avgRating = this.averageRating(ratings) : avgRating = this.state.avgRatingVal;
        currentUser ? userRating = this.findUserRating(ratings) : userRating = this.state.ratingVal;
        let numRatings = this.getNumRatings(ratings);

        return (
            <div className='ratings-outer-box'>
                <h1 className='ratings-head'>Ratings</h1>
                <div className='ratings-avg'>
                    <div className='ratings-avg-star-large'>&#9733;</div>
                    <div className='ratings-avg-text'>
                        <p className='ratings-avg-text-bolded'>
                            {(numRatings > 0) ?
                                `${avgRating} out of 5`
                            : 
                                `0 out of 5`
                            }
                        </p>
                        <p className='ratings-avg-text-light'>{numRatings} user ratings</p>
                    </div>
                </div>
                {userRating ?
                    <div className="ratings-input-box">
                        <div className="ratings-input-text-box">
                            <div className="ratings-input-text">Your rating</div>
                            <div className="ratings-input-clear" onClick={(userRating.user_id === currentUser.id) ? () => deleteThisRating(userRating.id) : () => {}}>Clear</div>
                        </div>
                        <div className="ratings-input">
                                <div className="ratings-user-rating">
                                    {[...Array(5)].map((star, i) => {
                                        i += 1
                                        return (
                                            <span className={i <= userRating.rating_value ? 'ratings-user-star-on' : 'ratings-user-star-off'} key={i}>&#9733;</span>
                                        )
                                    })}
                                </div>
                        </div>
                    </div>
                    : (currentUser && !userRating) ?
                    <div className="ratings-input-box">
                        <div className="ratings-input-text-box">
                            <div className="ratings-input-text">Your rating</div>
                        </div>
                        <div className="ratings-input">
                                <div className="ratings-user-rating">
                                    {[...Array(5)].map((star, i) => {
                                        i += 1
                                        return (
                                            <label key={i}>
                                                <input
                                                    type='radio'
                                                    className={i <= this.state.ratingVal ? 'ratings-user-star-on' : 'ratings-user-star-off'}
                                                    value={i}
                                                    onClick={this.handleSubmit}
                                                />
                                                <span className='ratings-user-star-off'>&#9733;</span>
                                            </label>
                                        )
                                    })}
                                </div>
                        </div>
                    </div>  
                    :
                    <div className="ratings-input-no-user">Log in to rate this recipe.</div>
                }
            </div>

        )
    }
};

export default RatingsBox;