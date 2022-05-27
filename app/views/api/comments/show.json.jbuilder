
json.set! @comment.id do
    json.extract! @comment, :id, :recipe_id, :user_id, :content
    json.datestamp @comment.datestamp
    json.author @comment.user.username
end
