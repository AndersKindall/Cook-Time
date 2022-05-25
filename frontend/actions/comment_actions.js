import * as CommentAPIUtil from "../util/comment_api_util";

export const RECEIVE_COMMENT = 'RECEIVE_COMMENT';
export const DELETE_COMMENT = 'DELETE_COMMENT';

export const receiveComment = comment => ({
    type: RECEIVE_COMMENT,
    comment
})

export const expungeComment = commentId => ({
    type: DELETE_COMMENT, 
    commentId 
})

export const addComment = (recipeId, content) => dispatch => (
    CommentAPIUtil.postComment(recipeId, content)
        .then(comment => dispatch(receiveComment(comment)))
)

export const updateCurrComment = (commentId, content) => dispatch => (
    CommentAPIUtil.updateComment(commentId, content)
        .then(comment => dispatch(receiveComment(comment)))
)

export const deleteCurrComment = (commentId) => dispatch => (
    CommentAPIUtil.deleteComment(commentId)
        .then(() => dispatch(expungeComment(commentId)))
)

