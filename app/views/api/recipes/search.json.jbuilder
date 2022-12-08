@recipes.each do |recipe|
    json.set! recipe.id do 
        json.extract! recipe, :dish_name, :author, :id, :cook_time
        json.photoUrl url_for(recipe.photo)
    end
end