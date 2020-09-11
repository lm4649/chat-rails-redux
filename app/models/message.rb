class Message < ApplicationRecord
  belongs_to :user
  belongs_to :channel
  validates presence: true
end
