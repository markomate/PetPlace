class Profile < ApplicationRecord
  # one-to-one relation
  belongs_to :user
  # one-to-one through user
  has_one :listing, through: :user

  validates :name, :DOB, :contact, :location, presence: true
end
