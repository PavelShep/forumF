# == Schema Information
#
# Table name: notes
#
#  id         :integer          not null, primary key
#  body       :text
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  topic_id   :integer
#
class Note < ApplicationRecord

  belongs_to :user
  belongs_to :topic

  has_rich_text :body
end
