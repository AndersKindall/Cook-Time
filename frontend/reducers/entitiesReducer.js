import { combineReducers } from "redux";

import usersReducer from "./user_reducer";
import recipesReducer from "./recipes_reducer";

const entitiesReducer = combineReducers({
    users: usersReducer,
    recipes: recipesReducer,
});

export default entitiesReducer;