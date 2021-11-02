class Plan < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture

  attachment :plan_image
  belongs_to :user
  has_many :spots, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :favorite_plans, through: :favorites, source: :plan

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

  accepts_nested_attributes_for :spots, allow_destroy: true

  enum transportation: { 車: 0, 電車: 1, バス: 2, バイク: 3, 自転車: 4, 徒歩: 5, その他: 6 }

end
