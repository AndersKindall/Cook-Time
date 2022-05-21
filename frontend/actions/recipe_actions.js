import * as RecipeAPIUtil from '../util/recipe_api_util'

export const RECEIVE_RECIPE = 'RECEIVE_RECIPE';
export const RECEIVE_ALL_RECIPES = 'RECEIVE_ALL_RECIPES';

export const receiveRecipe = recipe => ({
    type: RECEIVE_RECIPE,
    recipe
});

export const receiveAllRecipes = recipes => ({
    type: RECEIVE_ALL_RECIPES,
    recipes
});

export const getRecipe = recipeId => dispatch => (
    RecipeAPIUtil.fetchRecipe(recipeId)
        .then(recipe => dispatch(receiveRecipe(recipe)))
);

export const getAllRecipes = () => dispatch => (
    RecipeAPIUtil.fetchRecipes()
        .then(recipes => dispatch(receiveAllRecipes(recipes)))
)