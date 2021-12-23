class User < ApplicationRecord
  def find_tests_by_level(level)
    Test.joins('JOIN passings ON passings.tests_id = tests.id')
        .where(passings: {user_id: id}, tests: {level: level})
  end
end
