# == Schema Information
#
# Table name: steps
#
#  id           :bigint           not null, primary key
#  recipe_id    :integer          not null
#  order_number :integer          not null
#  content      :text             not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require 'test_helper'

class StepTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
