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
        this.averageRating = this.averageRating.bind(this);
        this.findUserRating = this.findUserRating.bind(this)
        
    }

    handleChange(e) {
       let newRatingVal = e.target.value;
       this.setState({ ratingVal: newRatingVal}) 
    }

    handleSubmit(e) {
        e.preventDefault();
        this.props.addRating(this.props.recipe.id, this.state.ratingVal)
    }

    clearRating(rating) {
        this.props.deleteThisRating(rating.id);
        this.setState({ ratingVal: 0 })
    }

    averageRating(ratings) {
        let total = 0;
        ratings.map(rating => (total += rating.rating_value))
        return Math.ceil(total/(ratings.length))
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

    render() {
        let { ratings, updateThisRating, deleteThisRating, currentUser } = this.props;
        let userRating = this.findUserRating(ratings);
        return (
            <div className='ratings-outer-box'>
                <h1 className='ratings-head'>Ratings</h1>
                <div className='ratings-avg'>
                    <div className='ratings-avg-star-large'>&#9733;</div>
                    <div className='ratings-avg-text'>
                        <p className='ratings-avg-text-bolded'>
                            {(ratings.length > 0) ?
                                `${this.averageRating(ratings)} out of 5`
                            : 
                                `0 out of 5`
                            }
                        </p>
                        <p className='ratings-avg-text-light'>{ratings.length} user ratings</p>
                    </div>
                </div>
                {userRating ?
                    <div className="ratings-input-box">
                        <div className="ratings-input-text-box">
                            <div className="ratings-input-text">Your rating</div>
                            <div className="ratings-input-clear"></div>
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
                    :
                    <div className="ratings-input-box">
                        <div className="ratings-input-text">Your rating</div>
                        <div className="ratings-input">
                                <div className="ratings-user-rating">
                                    {[...Array(5)].map((star, i) => {
                                        i += 1
                                        return (
                                            <span className={i <= this.state.ratingVal ? 'ratings-user-star-on' : 'ratings-user-star-off'} key={i}>&#9733;</span>
                                        )
                                    })}
                                </div>
                        </div>
                    </div>  
                }
            </div>

        )
    }
};

export default RatingsBox;