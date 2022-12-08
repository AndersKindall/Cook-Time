json.set! @rating.id do
    json.extract! @rating, :id, :recipe_id, :user_id, :rating_value
end