import { RECEIVE_COMMENT, DELETE_COMMENT } from "../actions/comment_actions";
import { RECEIVE_RECIPE } from "../actions/recipe_actions";

const commentsReducer = (state={}, action) => {
    Object.freeze(state);
    let newState = Object.assign({}, state)

    switch (action.type) {
        case RECEIVE_COMMENT:
            return Object.assign({}, newState, action.comment);
        case DELETE_COMMENT:
            delete newState[action.commentId]
            return newState;
        case RECEIVE_RECIPE:
            return Object.assign({}, newState, action.payload.comments)
        default: 
            return state;
    }
}
export default commentsReducer;