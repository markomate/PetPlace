class Listing < ApplicationRecord
  # one-to-one relation
  belongs_to :user
  # one-to-one through user
  has_one :profile, through: :user
  # active storage
  has_one_attached :picture
  # validations
  validates :title, :category, :price, :description, :picture, presence: true
  validates_length_of :price, :maximum => 10
  validates_length_of :description, :maximum => 500
end
