class Message < ApplicationRecord
  belongs_to :reward, optional: true
  belongs_to :user
  validates :content, presence: true, uniqueness: true
end
