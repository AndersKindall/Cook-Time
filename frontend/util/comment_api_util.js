
export const postComment = (recipeId, content) => {
    return $.ajax({
        method: 'POST',
        url: '/api/comments',
        data: { comment: { recipe_id: recipeId, content }}
    })
}

export const updateComment = (commentId, content) => {
    return $.ajax({
        method: 'PATCH',
        url: `/api/comments/${commentId}`,
        data: { comment: { content }}
    })
}

export const deleteComment = (commentId) => {
    return $.ajax({
        method: 'DELETE',
        url: `/api/comments/${commentId}`
    })
}