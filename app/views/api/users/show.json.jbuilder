json.partial! "api/users/user", user: @user

json.saves do
    @user.saves.each do |save|
        json.set! save.id do
            json.extract! save, :id, :recipe_id, :user_id
        end
    end
end