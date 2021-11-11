class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum gender: { man: 0, woman: 1 }

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  validates :prefecture, presence: true
  validates :name, presence: true, length: { maximum: 10 }
  validates :gender, presence: true
  validates :prefecture, presence: true
  validates :introduction, length: { maximum: 300 }

  has_many :plans, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :favorite_plans, through: :favorites, source: :plan

  attachment :image

end
