json.set! @save.id do 
    json.extract! @save, :id, :recipe_id, :user_id
    json.recipeId @save.recipe_id
    json.userId @save.user_id
end