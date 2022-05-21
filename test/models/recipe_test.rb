# == Schema Information
#
# Table name: recipes
#
#  id          :bigint           not null, primary key
#  dish_name   :string           not null
#  cook_time   :string           not null
#  description :text             not null
#  author      :string           not null
#  yield       :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
