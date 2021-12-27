class Answer < ApplicationRecord
  belongs_to :question

  validates :body, presence: true
  validate :count_of_answers, on: :create

  scope :correct_answer, -> { where(correct: true) }

  private

  def count_of_answers
    errors.add(:base, 'Limit violated, min 1 answer, max 4 answer') if question.answers.count >= 4
  end
end
