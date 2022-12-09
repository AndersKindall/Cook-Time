import React from "react";

class RatingsBox extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            ratingVal: 0
        }
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