class Comment < ApplicationRecord

  belongs_to :user
  belongs_to :plan

  validates :comment_text, presence: true, length: { maximum: 50 }

end
