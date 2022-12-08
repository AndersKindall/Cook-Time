class Rating < ApplicationRecord
    validates :recipe_id, :user_id, :rating_value, presence: true
    validates :rating_value, numericality: { in: 0..5 }

    belongs_to :recipe
    belongs_to :user
end
