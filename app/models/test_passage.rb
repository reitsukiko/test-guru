class TestPassage < ApplicationRecord

  belongs_to :user
  belongs_to :test
  belongs_to :current_question, class_name: 'Question', optional: true

  before_validation :before_validation_set_first_question, on: :create
  before_update :before_save_set_next_question, on: :update

  SUCCESSFULLY = 85

  def completed?
    current_question.nill?
  end

  def accept!(answer_ids)
    if correct_answer?(answer_ids)
      self.correct_questions += 1
    end

    save!
  end

  def current_question_number
    test.questions.order(:id).where('id < ?', current_question.id).size + 1
  end

  def percentage_score
    self.correct_questions.to_f / test.questions.count * 100
  end

  def successfully?
    percentage_score >= SUCCESSFULLY
  end

  private

  def before_validation_set_first_question
    self.current_question = test.questions.first if test.present?
  end

  def correct_answer?(answer_ids)
    unless answer_ids.nil?
      correct_answers.ids.sort == answer_ids.map(&:to_i).sort
    end
  end

  def correct_answers
    current_question.answers.correct
  end

  def before_save_set_next_question
    self.current_question = test.questions.order(:id).where('id > ?', current_question.id).first
  end
end
