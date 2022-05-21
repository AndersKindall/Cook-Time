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
require 'test_helper'

class IngredientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
