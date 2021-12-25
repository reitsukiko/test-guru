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
  { title: ‘HorrorMovie’, level:1, category: categories.first, author: users.first },
  { title: ‘DetectiveMovie’, level:2, category: categories.first, author: users.first },
  { title: ‘FantasticBook’, level:1, category: categories.second, author: users.first },
  { title: ‘FantasyBook’, level:2, category: categories.second, author: users.first },
  { title: ‘ActionGame’, level:1, category: categories.third, author: users.first },
  { title: ‘StrategyGame’, level:2, category: categories.third, author: users.first },
])

questions = Question.create!([
  { body: ‘questions1’, test: tests[0] },
  { body: ‘questions2’, test: tests[1] },
  { body: ‘questions3’, test: tests[2] },
  { body: ‘questions4’, test: tests[3] },
  { body: ‘questions5’, test: tests[4] },
  { body: ‘questions6’, test: tests[5] },
])

answers = Answer.create!([
  { body: ‘answer1’, correct: true, question: questions[0] },
  { body: ‘answer1’, correct: false, question: questions[0] },
  { body: ‘answer2’, correct: true, question: questions[1] },
  { body: ‘answer2’, correct: false, question: questions[1] },
  { body: ‘answer3’, correct: true, question: questions[2] },
  { body: ‘answer3’, correct: false, question: questions[2] },
  { body: ‘answer4’, correct: true, question: questions[3] },
  { body: ‘answer4’, correct: false, question: questions[3] },
  { body: ‘answer5’, correct: true, question: questions[4] },
  { body: ‘answer5’, correct: false, question: questions[4] },
  { body: ‘answer6’, correct: true, question: questions[5] },
  { body: ‘answer6’, correct: false, question: questions[5] },
])


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
