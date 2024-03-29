import { RECEIVE_SEARCH, CLEAR_SEARCH } from "../actions/recipe_actions";

const searchReducer = (state={}, action) => {
    Object.freeze(state);

    switch (action.type) {
        case RECEIVE_SEARCH:
            return action.recipes;
        case CLEAR_SEARCH:
            return {};
        default:
            return state;
    }
};

export default searchReducer;