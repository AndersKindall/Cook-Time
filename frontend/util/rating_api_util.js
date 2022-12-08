export const postRating = (recipeId, ratingValue) => {
    return $.ajax({
        method: 'POST',
        url: '/api/ratings',
        data: { rating: { recipe_id: recipeId, rating_value: ratingValue }}
    })
}

export const updateRating = (ratingId, ratingValue) => {
    return $.ajax({
        method: 'PATCH',
        url: `/api/ratings/${ratingId}`,
        data: { comment: { rating_value: ratingValue }}
    })
}

export const deleteRating = (ratingId) => {
    return $.ajax({
        method: 'DELETE',
        url: `/api/ratings/${ratingId}`
    })
}