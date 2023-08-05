# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Category < ApplicationRecord

  has_many :topics, dependent: :destroy

  validates :name, presence: true, length: { minimum: 3, maximum: 25 } 
  validates_uniqueness_of :name

end
