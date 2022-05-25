
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
    if @recipe.comments
        json.comments do 
            @recipe.comments.each do |comment|
                json.set! comment.id do
                    json.extract! comment, :id, :recipe_id, :user_id, :content, :created_at
                    json.author comment.user.username
                    json.datestamp comment.datestamp
                end
            end
        end
    end
