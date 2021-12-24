categories = Category.create!([
  { title: ‘Movie’ },
  { title: ‘Book’ },
  { title: ‘Game’ }
])

users = User.create!([
  { name: ‘MovieMaster’ },
  { name: ‘BookMaster’ },
  { name: ‘GameMaster’ }
])

tests = Test.create!([
  { title: ‘HorrorMovie’, level:1, category_id: categories.first.id, author_id: users.first.id },
  { title: ‘DetectiveMovie’, level:2, category_id: categories.first.id, author_id: users.first.id },
  { title: ‘FantasticBook’, level:1, category_id: categories.second.id, author_id: users.first.id },
  { title: ‘FantasyBook’, level:2, category_id: categories.second.id, author_id: users.first.id },
  { title: ‘ActionGame’, level:1, category_id: categories.third.id, author_id: users.first.id },
  { title: ‘StrategyGame’, level:2, category_id: categories.third.id, author_id: users.first.id },
])

questions = Question.create!([
  { body: ‘questions1’, test_id: tests[0].id },
  { body: ‘questions2’, test_id: tests[1].id },
  { body: ‘questions3’, test_id: tests[2].id },
  { body: ‘questions4’, test_id: tests[3].id },
  { body: ‘questions5’, test_id: tests[4].id },
  { body: ‘questions6’, test_id: tests[5].id },
])

answers = Answer.create!([
  { body: ‘answer1’, correct: true, question_id: questions[0].id },
  { body: ‘answer1’, correct: false, question_id: questions[0].id },
  { body: ‘answer2’, correct: true, question_id: questions[1].id },
  { body: ‘answer2’, correct: false, question_id: questions[1].id },
  { body: ‘answer3’, correct: true, question_id: questions[2].id },
  { body: ‘answer3’, correct: false, question_id: questions[2].id },
  { body: ‘answer4’, correct: true, question_id: questions[3].id },
  { body: ‘answer4’, correct: false, question_id: questions[3].id },
  { body: ‘answer5’, correct: true, question_id: questions[4].id },
  { body: ‘answer5’, correct: false, question_id: questions[4].id },
  { body: ‘answer6’, correct: true, question_id: questions[5].id },
  { body: ‘answer6’, correct: false, question_id: questions[5].id },
])


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
