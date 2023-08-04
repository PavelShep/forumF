# == Schema Information
#
# Table name: topics
#
#  id         :integer          not null, primary key
#  title      :string
#  subject    :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Topic < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_many :notes, dependent: :destroy

  has_rich_text :subject

  validates :title, presence: true
  validates :title, length: { minimum: 5, maximum: 2000 }, allow_blank: false
end
