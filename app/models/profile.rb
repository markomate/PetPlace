class Profile < ApplicationRecord
  # one-to-one relation
  belongs_to :user
  # one-to-one through user
  has_one :listing, through: :user
  # validations
  validates :name, :DOB, :contact, :location, presence: true
  validates_length_of :name, :maximum => 50
  validates_length_of :contact, :maximum => 20
  validates_length_of :location, :maximum => 70
end
