class User < ApplicationRecord
  after_create :create_profile
  #one-to-one relation
  has_one :profile, dependent: :destroy


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :timeoutable
end
