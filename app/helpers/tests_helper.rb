module TestsHelper
  TEST_LEVELS = { '0..1' => :easy, '2..4' => :normal, 5 => :hard }.freeze

  def test_level(test)
    TEST_LEVELS[test.level] || :hero
  end

  def test_questions_count(test)
  	test.questions.count
  end
end
