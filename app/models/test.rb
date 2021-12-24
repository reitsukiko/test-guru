class Test < ApplicationRecord
  belongs_to :category

  belongs_to :author, inverse_of: 'author_tests'

  has_many :question, dependent: :destroy

  has_many :passings, dependent: :destroy

  has_many :users, through: :passings

  def self.tests_by_category(category)
    joins(:category)
      .where(categories: { title: category })
      .order(title: :desc)
      .pluck(:title)
  end
end
