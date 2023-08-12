class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user

  validates :answer_text, :question_id, :user_id, presence: true
end
