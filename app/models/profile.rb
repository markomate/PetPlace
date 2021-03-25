class Profile < ApplicationRecord
  #one-to-one relation
  belongs_to :user
end
