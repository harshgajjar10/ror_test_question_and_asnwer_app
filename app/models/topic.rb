class Topic < ApplicationRecord
  has_many :questions
  has_and_belongs_to_many :users

  validates :title, :description, presence: true
end
