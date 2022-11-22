export const saveRecipe = (recipeId) => {
    return $.ajax({
        method: 'POST',
        url: `/api/recipes/${recipeId}/saves`
    })
}

export const deleteSave = (saveId) => {
    return $.ajax({
        method: 'DELETE',
        url: `/api/saves/${saveId}`
    })
}