class Message < ApplicationRecord
  belongs_to :reward
  belongs_to :user
  validates :content, presence: true, uniqueness: true
end
