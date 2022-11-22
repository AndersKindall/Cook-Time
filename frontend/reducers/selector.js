// recipes not defined 
export const selectSplash = state => {
    let splashRecipe;
    Object.values(state.entities.recipes).forEach(recipe => {
        if (recipe.id === 1) {
            splashRecipe = recipe; 
        }
    })
    return splashRecipe;
}

export const selectSuggestions = state => {
    let suggestions = [];
    Object.values(state.entities.recipes).forEach(recipe => {
        if (recipe.id === 7 || recipe.id === 8 || recipe.id === 9 || recipe.id === 10) {
            suggestions.push(recipe);
        }
    })
    return suggestions;
}

export const selectLovedRecipes = state => {
    let loves = [];
    Object.values(state.entities.recipes).forEach(recipe => {
        if (recipe.id === 11 || recipe.id === 14 || recipe.id === 13 || recipe.id === 20) {
            loves.push(recipe);
        }
    })
    return loves;
}