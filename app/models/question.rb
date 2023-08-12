class Question < ApplicationRecord
  belongs_to :user
  belongs_to :topic
  has_many :answers

  validates :title, :description, :topic_id, :user_id, presence: true
  validates :title, uniqueness: true
end
