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
class Step < ApplicationRecord

    validates :recipe_id, :order_number, :content, presence: true

    belongs_to :recipe
end
