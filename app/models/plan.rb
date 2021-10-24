class Plan < ApplicationRecord

  attachment :plan_image
  belongs_to :user
  has_many :spots, dependent: :destroy

  accepts_nested_attributes_for :spots, allow_destroy: true

end
