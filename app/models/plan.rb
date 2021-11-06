class Plan < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture

  attachment :plan_image
  belongs_to :user
  has_many :spots, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :favorite_plans, through: :favorites, source: :plan
  has_many :post_tags, dependent: :destroy
  has_many :tags, through: :post_tags


  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

  accepts_nested_attributes_for :spots, allow_destroy: true

  enum transportation: { car: 0, train: 1, bus: 2, bike: 3, bicycle: 4, walk: 5, another: 6 }

end
