import * as RatingAPIUtil from "../util/rating_api_util";

export const RECEIVE_RATING = "RECEIVE_RATING";
export const DELETE_RATING = "DELETE_RATING";

export const receiveRating = rating => ({
    type: RECEIVE_RATING,
    rating
})

export const deleteRating = ratingId => ({
    type: DELETE_RATING,
    ratingId
})

export const addRating = (recipeId, ratingValue) => dispatch => (
    RatingAPIUtil.postRating(recipeId, ratingValue)
        .then(rating => dispatch(receiveRating(rating)))
)

export const updateThisRating = (ratingId, ratingValue) => dispatch (
    RatingAPIUtil.updateRating(ratingId, ratingValue)
        .then(rating => dispatch(receiveRating(rating)))
)

export const deleteThisRating = (ratingId) => dispatch => (
    RatingAPIUtil.deleteRating(ratingId)
        .then(() => dispatch(deleteRating(ratingId)))
)