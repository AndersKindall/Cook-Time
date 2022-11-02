import * as RecipeAPIUtil from '../util/recipe_api_util'

export const RECEIVE_RECIPE = 'RECEIVE_RECIPE';
export const RECEIVE_ALL_RECIPES = 'RECEIVE_ALL_RECIPES';
export const RECEIVE_SEARCH = 'RECEIVE_SEARCH';
export const CLEAR_SEARCH = 'CLEAR_SEARCH';
export const RECEIVE_SEARCH_PAGE = 'RECEIVE_SEARCH_PAGE';
export const CLEAR_SEARCH_PAGE = 'CLEAR_SEARCH_PAGE';

export const receiveRecipe = payload => ({
    type: RECEIVE_RECIPE,
    payload
});

export const receiveAllRecipes = recipes => ({
    type: RECEIVE_ALL_RECIPES,
    recipes
});

export const receiveSearch = (recipes) => ({
    type: RECEIVE_SEARCH,
    recipes
});

export const clearSearch = () => ({
    type: CLEAR_SEARCH,
});

export const clearSearchPage = () => ({
    type: CLEAR_SEARCH_PAGE,
});

export const receiveSearchPage = (recipes) => ({
    type: RECEIVE_SEARCH_PAGE,
    recipes
});

export const getRecipe = recipeId => dispatch => (
    RecipeAPIUtil.fetchRecipe(recipeId)
        .then(payload => dispatch(receiveRecipe(payload)))
);

export const getAllRecipes = () => dispatch => (
    RecipeAPIUtil.fetchRecipes()
        .then(recipes => dispatch(receiveAllRecipes(recipes)))
);

export const search = (query) => dispatch => (
    RecipeAPIUtil.searchRecipes(query)
        .then(recipes => dispatch(receiveSearch(recipes)))
);

export const searchPage = (query) => dispatch => (
    RecipeAPIUtil.searchRecipes(query)
        .then(recipes => dispatch(receiveSearchPage(recipes)))
);