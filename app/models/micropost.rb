class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 255 }
  
  has_many :relations, foreign_key: 'favorite_id'
  has_many :favoriters, through: :relations, source: :user
end
