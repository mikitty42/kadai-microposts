class Micropost <  ApplicationRecord
  has_many :likes
  has_many :like_user, through: :likes, source: :user
  belongs_to :user
  validates :user_id,presence: true
  validates :content,presence: true,length: { maximum:255 }
end