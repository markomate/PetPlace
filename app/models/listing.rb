class Listing < ApplicationRecord
  # one-to-one relation
  belongs_to :user
  # active storage
  has_one_attached :picture
end
