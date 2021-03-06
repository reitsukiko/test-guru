class Test < ApplicationRecord
  belongs_to :category

  belongs_to :author, inverse_of: 'сreated_tests'

  has_many :question, dependent: :destroy

  has_many :test_passages, dependent: :destroy

  has_many :users, through: :test_passages

  validates :title, presence: true, uniqueness: { scope: :level }
  validates :level, numericality: { only_integer: true, greater_than_or_equel_to: 0 }

  scope :easy, -> { where(level: 0..1) }
  scope :normal, -> { where(level: 2..4) }
  scope :hard, -> { where(level: 5..Float::INFINITY) }

  scope :tests_by_category, -> (category) {
    joins(:category)
      .where(categories: { title: category })
  }

  def self.find_tests_by_category(category)
    tests_by_category(category).order(title: :desc).pluck(:title)
  end
end
