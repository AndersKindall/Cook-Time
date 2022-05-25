import { combineReducers } from "redux";

import usersReducer from "./user_reducer";
import recipesReducer from "./recipes_reducer";
import commentsReducer from "./comments_reducer";

const entitiesReducer = combineReducers({
    users: usersReducer,
    recipes: recipesReducer,
    comments: commentsReducer
});

export default entitiesReducer;