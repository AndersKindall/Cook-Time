import { combineReducers } from "redux";

import usersReducer from "./user_reducer";
import recipesReducer from "./recipes_reducer";
import commentsReducer from "./comments_reducer";
import searchReducer from "./search_reducer";
import searchPageReducer from "./search_page_reducer";

const entitiesReducer = combineReducers({
    users: usersReducer,
    recipes: recipesReducer,
    comments: commentsReducer,
    search: searchReducer,
    searchPage: searchPageReducer,
});

export default entitiesReducer;