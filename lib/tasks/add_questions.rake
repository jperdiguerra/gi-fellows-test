namespace :questions do
  desc 'import questions'
  task import: :environment do 
    Question.all.delete_all
    Choice.all.delete_all
    questions = [
      {
        text: 'What is your name?',
        choices: [
          { text: 'Foo', correct: false },
          { text: 'Bar', correct: true },
          { text: 'Blah', correct: false }
        ],
      },
      {
        text: 'Where are you?',
        choices: [
          { text: 'Lorem', correct: false },
          { text: 'Ipsum', correct: true },
          { text: 'Dolor', correct: false }
        ]
      }
    ]
    questions.each do |question|
      q = Question.create(text: question[:text])
      question[:choices].each do |choice|
        q.choices.create(text: choice[:text], correct: choice[:correct])
      end
    end
  end
end
