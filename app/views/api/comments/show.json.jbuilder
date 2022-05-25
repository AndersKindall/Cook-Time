json.comment do
    json.set! @comment.id do
        json.extract! @comment, :recipe_id, :user_id, :content
        json.datestamp @comment.datestamp
        json.author @comment.user.username
    end
end