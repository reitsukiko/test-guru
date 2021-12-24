class User < ApplicationRecord
  has_many :passings, dependent: :destroy

  has_many :tests, through: :passings

  has_many :author_tests, class_name: 'Test', foreign_key: :author_id

  def find_tests_by_level(level)
    tests.where(level: level)
  end
end
