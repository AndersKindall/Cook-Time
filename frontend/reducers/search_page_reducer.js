import { RECEIVE_SEARCH_PAGE, CLEAR_SEARCH_PAGE } from "../actions/recipe_actions";

const searchPageReducer = (state={}, action) => {
    Object.freeze(state);

    switch (action.type) {
        case RECEIVE_SEARCH_PAGE:
            return action.recipes;
        case CLEAR_SEARCH_PAGE:
            return {};
        default:
            return state;
    }
};

export default searchPageReducer;