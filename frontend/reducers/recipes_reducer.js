import { RECEIVE_ALL_RECIPES, RECEIVE_RECIPE } from "../actions/recipe_actions";


const recipesReducer = (state={}, action) => {
    Object.freeze(state);
    
    switch(action.type) {
        case RECEIVE_ALL_RECIPES:
            return action.recipes;
        case RECEIVE_RECIPE:
            return Object.assign({}, state, {[action.payload.recipe.id]: action.payload.recipe})
        default:
            return state;
    }
};

export default recipesReducer;