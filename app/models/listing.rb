class Listing < ApplicationRecord
  # one-to-one relation
  belongs_to :user
  # one-to-one through user
  has_one :profile, through: :user
  # active storage
  has_one_attached :picture
  

  validates :title, :category, :price, :description, :picture, presence: true
end
