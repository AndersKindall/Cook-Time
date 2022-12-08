import { RECEIVE_RATING, DELETE_RATING } from "../actions/rating_actions";
import { RECEIVE_RECIPE } from "../actions/recipe_actions";

const ratingsReducer = (state={}, action) => {
    Object.freeze(state);
    let newState = Object.assign({}, state)

    switch (action.type) {
        case RECEIVE_RATING: 
            return Object.assign({}, newState, action.rating)
    }
}