json.recipe do
    json.extract! @recipe, :id, :dish_name, :cook_time, :description, :author, :yield
    json.photoUrl url_for(@recipe.photo)
    json.ingredients do 
        @recipe.ingredients.each do |ingredient|
            json.set! ingredient.order do 
                json.extract! ingredient, :recipe_id, :order, :amount, :ingredient_name
            end
        end
    end
    json.steps do 
        @recipe.steps.each do |step|
            json.set! step.order_number do 
                json.extract! step, :recipe_id, :order_number, :content
            end
        end
    end
    if current_user 
        @recipe.saves.each do |save|
            if save.user_id === current_user.id
                json.save_id save.id
            end
        end
    end
end
json.comments do
    if @recipe.comments
        @recipe.comments.each do |comment|
            json.set! comment.id do
                json.extract! comment, :id, :recipe_id, :user_id, :content, :created_at
                json.author comment.user.username
                json.datestamp comment.datestamp
            end
        end
    end
end
json.saves do
    if current_user
        @recipe.saves.each do |save|
            if save.user_id === current_user.id
                json.set! save.recipe_id do
                    json.extract! save, :id, :recipe_id, :user_id
                end
            end
        end
    end
end
