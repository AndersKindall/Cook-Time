# == Schema Information
#
# Table name: comments
#
#  id         :bigint           not null, primary key
#  recipe_id  :integer          not null
#  user_id    :integer          not null
#  content    :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Comment < ApplicationRecord
    include ActionView::Helpers::DateHelper

    validates :recipe_id, :user_id, :content, presence: true

    belongs_to :recipe
    belongs_to :user

    def datestamp
        time_ago_in_words(created_at)
    end
end
