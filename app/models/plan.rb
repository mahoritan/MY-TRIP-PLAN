class Plan < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture

  attachment :plan_image
  belongs_to :user
  has_many :spots, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :favorite_plans, through: :favorites, source: :plan
  has_many :plan_tags, dependent: :destroy
  has_many :tags, through: :plan_tags

  validates :title, presence: true, length: { maximum: 20 }
  validates :plan_introduction, presence: true, length: { maximum: 300 }
  validates :prefecture_id, presence: true
  validates :transportation, presence: true


  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

  accepts_nested_attributes_for :spots, allow_destroy: true

  enum transportation: { car: 0, train: 1, plain: 2, bus: 3, bike: 4, bicycle: 5, walk: 6, another: 7 }

end
