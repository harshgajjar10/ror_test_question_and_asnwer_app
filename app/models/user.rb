class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :questions
  has_many :answers
  has_and_belongs_to_many :topics
  serialize :following_user_ids, Array

  validates :email, :password, presence: true
  validates :email, uniqueness: true
end
