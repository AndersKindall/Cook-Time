
export const postComment = (recipeId, content) => {
    return $.ajax({
        method: 'POST',
        url: '/api/comments',
        data: { comment: { recipe_id: recipeId, content }}
    })
}

export const updateComment = (commentId, text) => {
    return $.ajax({
        method: 'PATCH',
        url: `/api/comments/${commentId}`,
        data: { comment: { text }}
    })
}

export const deleteComment = (commentId) => {
    return $.ajxa({
        method: 'DELETE',
        url: `/api/comments/${commentId}`
    })
}