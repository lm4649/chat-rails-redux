class Channel < ApplicationRecord
  has_many :messages
  has_many :users, through: :messages
  validates presence: true, uniqueness: true
end
