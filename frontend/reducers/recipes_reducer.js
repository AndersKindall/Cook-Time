import { RECEIVE_ALL_RECIPES, RECEIVE_RECIPE, RECEIVE_SEARCH } from "../actions/recipe_actions";
import { RECEIVE_SAVE, DELETE_ONE_SAVE } from "../actions/save_actions";
import { RECEIVE_CURRENT_USER } from "../actions/session_actions";

const recipesReducer = (state={}, action) => {
    Object.freeze(state);
    let newState = Object.assign({}, state);
    switch(action.type) {
        case RECEIVE_ALL_RECIPES:
            return action.recipes;
        case RECEIVE_RECIPE:
            return Object.assign({}, state, {[action.payload.recipe.id]: action.payload.recipe})
        case RECEIVE_SEARCH:
            Object.values(action.recipes).map(recipe =>{
                newState[recipe.id] = recipe;
            });
            return newState;
        default:
            return state;
    }
};

export default recipesReducer;