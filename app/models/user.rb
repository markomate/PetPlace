class User < ApplicationRecord
  # one-to-one relation
  has_one :profile, dependent: :destroy
  # one-to-many relation
  has_many :listings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :timeoutable
end
