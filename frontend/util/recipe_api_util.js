
export const fetchRecipe = recipeId => {
    return $.ajax({
        method: 'GET',
        url: `/api/recipes/${recipeId}`
    })
};

export const fetchRecipes = () => {
    return $.ajax({
        method: 'GET',
        url: '/api/recipes'
    })
};

export const searchRecipes = (query) => {
    return $.ajax({
        method: 'GET',
        url: `/api/search/${query}`
    })
};
