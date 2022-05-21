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
class Recipe < ApplicationRecord

    validates :dish_name, presence: true, uniqueness: true
    validates :cook_time, :yield, :description, :author, :yield, presence: true

    has_many :ingredients
    has_many :steps
    has_many :comments

    has_one_attached :photo
end
