class Message < ApplicationRecord
  belongs_to :user
  has_many :comments, as: :commentable, dependent: :destroy

  validates :title, presence: true, length: { minimum: 10 }
  validates :content, presence: true, length: { minimum: 100 }
end
