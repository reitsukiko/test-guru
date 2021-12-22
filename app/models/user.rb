class User < ApplicationRecord
  def find_tests_by_level(level)
    tests.where(level: level)
  end
end
