# == Schema Information
#
# Table name: ingredients
#
#  id              :bigint           not null, primary key
#  recipe_id       :integer          not null
#  amount          :string
#  ingredient_name :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  order           :integer
#
class Ingredient < ApplicationRecord

    validates :recipe_id, :ingredient_name, :order, presence: true

    belongs_to :recipe
    
end
