@recipes.each do |recipe|
    json.set! recipe.id do 
        json.extract! recipe, :dish_name, :author, :id, :cook_time
        json.photoUrl url_for(recipe.photo)
        if current_user 
            recipe.saves.each do |save|
                if save.user_id === current_user.id
                    json.save_id save.id
                end
            end
        end
    end
end