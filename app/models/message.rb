class Message < ApplicationRecord
  belongs_to :user
  belongs_to :reward, optional: true
  validates :content, presence: true
end
