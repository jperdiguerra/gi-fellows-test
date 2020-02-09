namespace :questions do
  desc 'import questions'
  task import: :environment do 
    Question.default.delete_all
    Choice.all.delete_all
    questions = [
      {
        text: 'What is the primary chromophore of the gastrointestinal mucosa?',
        choices: [
          { text: 'Cell nuclei', correct: false },
          { text: 'Fiber', correct: false },
          { text: 'Hemoglobin', correct: true },
          { text: 'Smooth muscle', correct: false}
        ]
      },
      {
        text: 'Which of the following correctly identify a normal gastric body mucosa on IEE?',
        choices: [
          { text: '(+) SECN', correct: false },
          { text: '(+) RAC', correct: false },
          { text: 'Both A and B', correct: true },
          { text: 'Neither A nor B', correct: false }
        ]
      },
      {
        text: 'Collective venules are usually seen in which of the following?',
        choices: [
          { text: 'Gastric antrum', correct: false },
          { text: 'Gastric body', correct: true },
          { text: 'Both gastric body and antrum', correct: false },
          { text: 'None of the above', correct: false }
        ]
      },
      {
        text: 'A finding of Light Blue Crest on IEE is indicative of which of the following?',
        choices: [
          { text: 'Atrophic Gastritis', correct: false },
          { text: 'Early Gastric Cancer', correct: false },
          { text: 'Helicobacter pylori gastritis', correct: false },
          { text: 'Intestinal Metaplasia', correct: true }
        ]
      },
      {
        text: 'This finding on IEE of the gastric body has a sensitivity of 100% and a specificity of 92% for the prediction of H. pylori infection.',
        choices: [
          { text: 'Honeycombing SECN', correct: false },
          { text: 'Irregular arrangement of collecting venules', correct: false },
          { text: 'Irregular, round pits', correct: false },
          { text: 'Loss of collecting venules', correct: true }
        ]
      },
      {
        text: 'Identify',
        choices: [
          { text: 'Normal gastric body mucosa', correct: false },
          { text: 'Normal gastric antral mucosa', correct: false },
          { text: 'HP (+) gastric body mucosa', correct: true },
          { text: 'HP (+) gastric antral mucosa', correct: false },
          { text: 'Intestinal Metaplasia', correct: false }
        ],
        image: 'q6.png'
      },
      {
        text: 'Identify',
        choices: [
          { text: 'Normal gastric body mucosa', correct: false },
          { text: 'Normal gastric antral mucosa', correct: true },
          { text: 'HP (+) gastric body mucosa', correct: false },
          { text: 'HP (+) gastric antral mucosa', correct: false },
          { text: 'Intestinal Metaplasia', correct: false }
        ],
        image: 'q7.png'
      },
      {
        text: 'Identify',
        choices: [
          { text: 'Normal gastric body mucosa', correct: false },
          { text: 'Normal gastric antral mucosa', correct: false },
          { text: 'HP (+) gastric body mucosa', correct: false },
          { text: 'HP (+) gastric antral mucosa', correct: false },
          { text: 'Intestinal Metaplasia', correct: true }
        ],
        image: 'q8.png'
      },
      {
        text: 'Identify',
        choices: [
          { text: 'Normal gastric body mucosa', correct: true },
          { text: 'Normal gastric antral mucosa', correct: false },
          { text: 'HP (+) gastric body mucosa', correct: false },
          { text: 'HP (+) gastric antral mucosa', correct: false },
          { text: 'Intestinal Metaplasia', correct: false }
        ],
        image: 'q9.png'
      },
      {
        text: 'Identify',
        choices: [
          { text: 'Normal gastric body mucosa', correct: false },
          { text: 'Normal gastric antral mucosa', correct: true },
          { text: 'HP (+) gastric body mucosa', correct: false },
          { text: 'HP (+) gastric antral mucosa', correct: false },
          { text: 'Intestinal Metaplasia', correct: false }
        ],
        image: 'q10.png'
      },
      {
        text: 'Identify',
        choices: [
          { text: 'Normal gastric body mucosa', correct: false },
          { text: 'Normal gastric antral mucosa', correct: false },
          { text: 'HP (+) gastric body mucosa', correct: false },
          { text: 'HP (+) gastric antral mucosa', correct: true },
          { text: 'Intestinal Metaplasia', correct: false }
        ],
        image: 'q11.png'
      },
      {
        text: 'Identify',
        choices: [
          { text: 'Normal gastric body mucosa', correct: false },
          { text: 'Normal gastric antral mucosa', correct: true },
          { text: 'HP (+) gastric body mucosa', correct: false },
          { text: 'HP (+) gastric antral mucosa', correct: false },
          { text: 'Intestinal Metaplasia', correct: false }
        ],
        image: 'q12.png'
      },
      {
        text: 'Identify',
        choices: [
          { text: 'Normal gastric body mucosa', correct: false },
          { text: 'Normal gastric antral mucosa', correct: true },
          { text: 'HP (+) gastric body mucosa', correct: false },
          { text: 'HP (+) gastric antral mucosa', correct: false },
          { text: 'Intestinal Metaplasia', correct: false }
        ],
        image: 'q13.png'
      },
      {
        text: 'Identify',
        choices: [
          { text: 'Normal gastric body mucosa', correct: false },
          { text: 'Normal gastric antral mucosa', correct: false },
          { text: 'HP (+) gastric body mucosa', correct: true },
          { text: 'HP (+) gastric antral mucosa', correct: false },
          { text: 'Intestinal Metaplasia', correct: false }
        ],
        image: 'q14.png'
      },
      {
        text: 'Identify',
        choices: [
          { text: 'Normal gastric body mucosa', correct: false },
          { text: 'Normal gastric antral mucosa', correct: true },
          { text: 'HP (+) gastric body mucosa', correct: false },
          { text: 'HP (+) gastric antral mucosa', correct: false },
          { text: 'Intestinal Metaplasia', correct: false }
        ],
        image: 'q15.png'
      },
      {
        text: 'Identify',
        choices: [
          { text: 'Normal gastric body mucosa', correct: false },
          { text: 'Normal gastric antral mucosa', correct: false },
          { text: 'HP (+) gastric body mucosa', correct: false },
          { text: 'HP (+) gastric antral mucosa', correct: false },
          { text: 'Intestinal Metaplasia', correct: true }
        ],
        image: 'q16.png'
      },
      {
        text: 'Identify',
        choices: [
          { text: 'Normal gastric body mucosa', correct: true },
          { text: 'Normal gastric antral mucosa', correct: false },
          { text: 'HP (+) gastric body mucosa', correct: false },
          { text: 'HP (+) gastric antral mucosa', correct: false },
          { text: 'Intestinal Metaplasia', correct: false }
        ],
        image: 'q17.png'
      },
      {
        text: 'Identify',
        choices: [
          { text: 'Normal gastric body mucosa', correct: true },
          { text: 'Normal gastric antral mucosa', correct: false },
          { text: 'HP (+) gastric body mucosa', correct: false },
          { text: 'HP (+) gastric antral mucosa', correct: false },
          { text: 'Intestinal Metaplasia', correct: false }
        ],
        image: 'q18.png'
      },
      {
        text: 'Identify',
        choices: [
          { text: 'Normal gastric body mucosa', correct: true },
          { text: 'Normal gastric antral mucosa', correct: false },
          { text: 'HP (+) gastric body mucosa', correct: false },
          { text: 'HP (+) gastric antral mucosa', correct: false },
          { text: 'Intestinal Metaplasia', correct: false }
        ],
        image: 'q19.png'
      },
      {
        text: 'Identify',
        choices: [
          { text: 'Normal gastric body mucosa', correct: true },
          { text: 'Normal gastric antral mucosa', correct: false },
          { text: 'HP (+) gastric body mucosa', correct: false },
          { text: 'HP (+) gastric antral mucosa', correct: false },
          { text: 'Intestinal Metaplasia', correct: false }
        ],
        image: 'q20.png'
      },
      {
        text: 'Identify',
        choices: [
          { text: 'Normal gastric body mucosa', correct: false },
          { text: 'Normal gastric antral mucosa', correct: true },
          { text: 'HP (+) gastric body mucosa', correct: false },
          { text: 'HP (+) gastric antral mucosa', correct: false },
          { text: 'Intestinal Metaplasia', correct: false }
        ],
        image: 'q21.png'
      },
      {
        text: 'Identify',
        choices: [
          { text: 'Normal gastric body mucosa', correct: true },
          { text: 'Normal gastric antral mucosa', correct: false },
          { text: 'HP (+) gastric body mucosa', correct: false },
          { text: 'HP (+) gastric antral mucosa', correct: false },
          { text: 'Intestinal Metaplasia', correct: false }
        ],
        image: 'q22.png'
      },
      {
        text: 'Identify',
        choices: [
          { text: 'Normal gastric body mucosa', correct: false },
          { text: 'Normal gastric antral mucosa', correct: false },
          { text: 'HP (+) gastric body mucosa', correct: true },
          { text: 'HP (+) gastric antral mucosa', correct: false },
          { text: 'Intestinal Metaplasia', correct: false }
        ],
        image: 'q23.png'
      },
      {
        text: 'Identify',
        choices: [
          { text: 'Normal gastric body mucosa', correct: false },
          { text: 'Normal gastric antral mucosa', correct: false },
          { text: 'HP (+) gastric body mucosa', correct: false },
          { text: 'HP (+) gastric antral mucosa', correct: true },
          { text: 'Intestinal Metaplasia', correct: false }
        ],
        image: 'q24.png'
      },
      {
        text: 'Identify',
        choices: [
          { text: 'Normal gastric body mucosa', correct: false },
          { text: 'Normal gastric antral mucosa', correct: false },
          { text: 'HP (+) gastric body mucosa', correct: true },
          { text: 'HP (+) gastric antral mucosa', correct: false },
          { text: 'Intestinal Metaplasia', correct: false }
        ],
        image: 'q25.png'
      },
      {
        text: 'Identify',
        choices: [
          { text: 'Normal gastric body mucosa', correct: true },
          { text: 'Normal gastric antral mucosa', correct: false },
          { text: 'HP (+) gastric body mucosa', correct: false },
          { text: 'HP (+) gastric antral mucosa', correct: false },
          { text: 'Intestinal Metaplasia', correct: false }
        ],
        image: 'q26.png'
      },
      {
        text: 'Identify',
        choices: [
          { text: 'Normal gastric body mucosa', correct: false },
          { text: 'Normal gastric antral mucosa', correct: false },
          { text: 'HP (+) gastric body mucosa', correct: true },
          { text: 'HP (+) gastric antral mucosa', correct: false },
          { text: 'Intestinal Metaplasia', correct: false }
        ],
        image: 'q27.png'
      },
      {
        text: 'Identify',
        choices: [
          { text: 'Normal gastric body mucosa', correct: false },
          { text: 'Normal gastric antral mucosa', correct: false },
          { text: 'HP (+) gastric body mucosa', correct: true },
          { text: 'HP (+) gastric antral mucosa', correct: false },
          { text: 'Intestinal Metaplasia', correct: false }
        ],
        image: 'q28.png'
      },
      {
        text: 'Identify',
        choices: [
          { text: 'Normal gastric body mucosa', correct: false },
          { text: 'Normal gastric antral mucosa', correct: false },
          { text: 'HP (+) gastric body mucosa', correct: false },
          { text: 'HP (+) gastric antral mucosa', correct: true },
          { text: 'Intestinal Metaplasia', correct: false }
        ],
        image: 'q29.png'
      },
      {
        text: 'Identify',
        choices: [
          { text: 'Normal gastric body mucosa', correct: false },
          { text: 'Normal gastric antral mucosa', correct: false },
          { text: 'HP (+) gastric body mucosa', correct: false },
          { text: 'HP (+) gastric antral mucosa', correct: false },
          { text: 'Intestinal Metaplasia', correct: true }
        ],
        image: 'q30.png'
      },
      {
        text: 'Identify',
        choices: [
          { text: 'Normal gastric body mucosa', correct: false },
          { text: 'Normal gastric antral mucosa', correct: true },
          { text: 'HP (+) gastric body mucosa', correct: false },
          { text: 'HP (+) gastric antral mucosa', correct: false },
          { text: 'Intestinal Metaplasia', correct: false }
        ],
        image: 'q31.png'
      },
      {
        text: 'Identify',
        choices: [
          { text: 'Normal gastric body mucosa', correct: false },
          { text: 'Normal gastric antral mucosa', correct: false },
          { text: 'HP (+) gastric body mucosa', correct: false },
          { text: 'HP (+) gastric antral mucosa', correct: false },
          { text: 'Intestinal Metaplasia', correct: true }
        ],
        image: 'q32.png'
      },
      {
        text: 'Identify',
        choices: [
          { text: 'Normal gastric body mucosa', correct: false },
          { text: 'Normal gastric antral mucosa', correct: false },
          { text: 'HP (+) gastric body mucosa', correct: true },
          { text: 'HP (+) gastric antral mucosa', correct: false },
          { text: 'Intestinal Metaplasia', correct: false }
        ],
        image: 'q33.png'
      },
      {
        text: 'Identify',
        choices: [
          { text: 'Normal gastric body mucosa', correct: false },
          { text: 'Normal gastric antral mucosa', correct: false },
          { text: 'HP (+) gastric body mucosa', correct: false },
          { text: 'HP (+) gastric antral mucosa', correct: false },
          { text: 'Intestinal Metaplasia', correct: true }
        ],
        image: 'q34.png'
      },
      {
        text: 'Identify',
        choices: [
          { text: 'Normal gastric body mucosa', correct: false },
          { text: 'Normal gastric antral mucosa', correct: false },
          { text: 'HP (+) gastric body mucosa', correct: false },
          { text: 'HP (+) gastric antral mucosa', correct: false },
          { text: 'Intestinal Metaplasia', correct: true }
        ],
        image: 'q35.png'
      },
      {
        text: 'Identify',
        choices: [
          { text: 'Normal gastric body mucosa', correct: false },
          { text: 'Normal gastric antral mucosa', correct: false },
          { text: 'HP (+) gastric body mucosa', correct: false },
          { text: 'HP (+) gastric antral mucosa', correct: true },
          { text: 'Intestinal Metaplasia', correct: false }
        ],
        image: 'q36.png'
      },
      {
        text: 'Identify',
        choices: [
          { text: 'Normal gastric body mucosa', correct: false },
          { text: 'Normal gastric antral mucosa', correct: false },
          { text: 'HP (+) gastric body mucosa', correct: true },
          { text: 'HP (+) gastric antral mucosa', correct: false },
          { text: 'Intestinal Metaplasia', correct: false }
        ],
        image: 'q37.png'
      },
      {
        text: 'Identify',
        choices: [
          { text: 'Normal gastric body mucosa', correct: false },
          { text: 'Normal gastric antral mucosa', correct: false },
          { text: 'HP (+) gastric body mucosa', correct: false },
          { text: 'HP (+) gastric antral mucosa', correct: false },
          { text: 'Intestinal Metaplasia', correct: true }
        ],
        image: 'q38.png'
      },
      {
        text: 'Identify',
        choices: [
          { text: 'Normal gastric body mucosa', correct: false },
          { text: 'Normal gastric antral mucosa', correct: false },
          { text: 'HP (+) gastric body mucosa', correct: false },
          { text: 'HP (+) gastric antral mucosa', correct: true },
          { text: 'Intestinal Metaplasia', correct: false }
        ],
        image: 'q39.png'
      },
      {
        text: 'Identify',
        choices: [
          { text: 'Normal gastric body mucosa', correct: true },
          { text: 'Normal gastric antral mucosa', correct: false },
          { text: 'HP (+) gastric body mucosa', correct: false },
          { text: 'HP (+) gastric antral mucosa', correct: false },
          { text: 'Intestinal Metaplasia', correct: false }
        ],
        image: 'q40.png'
      },
      {
        text: 'Identify',
        choices: [
          { text: 'Normal gastric body mucosa', correct: false },
          { text: 'Normal gastric antral mucosa', correct: false },
          { text: 'HP (+) gastric body mucosa', correct: false },
          { text: 'HP (+) gastric antral mucosa', correct: true },
          { text: 'Intestinal Metaplasia', correct: false }
        ],
        image: 'q41.png'
      },
      {
        text: 'Identify',
        choices: [
          { text: 'Normal gastric body mucosa', correct: true },
          { text: 'Normal gastric antral mucosa', correct: false },
          { text: 'HP (+) gastric body mucosa', correct: false },
          { text: 'HP (+) gastric antral mucosa', correct: false },
          { text: 'Intestinal Metaplasia', correct: false }
        ],
        image: 'q42.png'
      },
      {
        text: 'Identify',
        choices: [
          { text: 'Normal gastric body mucosa', correct: false },
          { text: 'Normal gastric antral mucosa', correct: false },
          { text: 'HP (+) gastric body mucosa', correct: false },
          { text: 'HP (+) gastric antral mucosa', correct: true },
          { text: 'Intestinal Metaplasia', correct: false }
        ],
        image: 'q43.png'
      },
      {
        text: 'Identify',
        choices: [
          { text: 'Normal gastric body mucosa', correct: false },
          { text: 'Normal gastric antral mucosa', correct: true },
          { text: 'HP (+) gastric body mucosa', correct: false },
          { text: 'HP (+) gastric antral mucosa', correct: false },
          { text: 'Intestinal Metaplasia', correct: false }
        ],
        image: 'q44.png'
      },
      {
        text: 'Identify',
        choices: [
          { text: 'Normal gastric body mucosa', correct: false },
          { text: 'Normal gastric antral mucosa', correct: true },
          { text: 'HP (+) gastric body mucosa', correct: false },
          { text: 'HP (+) gastric antral mucosa', correct: false },
          { text: 'Intestinal Metaplasia', correct: false }
        ],
        image: 'q45.png'
      }
    ]
    questions.each do |question|
      q = Question.create(text: question[:text], image: question[:image])
      question[:choices].each do |choice|
        q.choices.create(text: choice[:text], correct: choice[:correct])
      end
    end
  end
  desc 'import posttest3 questions'
  task import_posttest3: :environment do
    Question.posttest3.delete_all
    questions = [
      {
        text: 'What is the primary chromophore of the gastrointestinal mucosa?',
        choices: [
          { text: 'Cell nuclei', correct: false },
          { text: 'Fiber', correct: false },
          { text: 'Hemoglobin', correct: true },
          { text: 'Smooth muscle', correct: false}
        ],
        version: 1
      },
      {
        text: 'Which of the following correctly identify a normal gastric body mucosa on IEE?',
        choices: [
          { text: '(+) SECN', correct: false },
          { text: '(+) RAC', correct: false },
          { text: 'Both A and B', correct: true },
          { text: 'Neither A nor B', correct: false}
        ],
        version: 1
      },
      {
        text: 'Collective venules are usually seen in which of the following?',
        choices: [
          { text: 'Gastric antrum', correct: false },
          { text: 'Gastric body', correct: true },
          { text: 'Both gastric body and antrum', correct: false },
          { text: 'None of the above', correct: false}
        ],
        version: 1
      },
      {
        text: 'A finding of Light Blue Crest on IEE is indicative of which of the following?',
        choices: [
          { text: 'Atrophic Gastritis', correct: false },
          { text: 'Early Gastric Cancer', correct: false },
          { text: 'Helicobacter pylori gastritis', correct: false },
          { text: 'Intestinal Metaplasia', correct: true}
        ],
        version: 1
      },
      {
        text: 'This finding on IEE of the gastric body has a sensitivity of 100% and a specificity of 92% for the prediction of H. pylori infection.',
        choices: [
          { text: 'Honeycombing SECN', correct: false },
          { text: 'Irregular arrangement of collecting venules', correct: false },
          { text: 'Irregular, round pits', correct: false },
          { text: 'Loss of collecting venules', correct: true}
        ],
        version: 1
      },
      {
        text: 'This gastric body mucosa is most likely:',
        choices: [
          { text: 'Helicobacter pylori negative', correct: false },
          { text: 'Helicobacter pylori positive', correct: true}
        ],
        image: 'q6_v1.png',
        version: 1
      },
      {
        text: 'This gastric antral mucosa is most likely:',
        choices: [
          { text: 'Helicobacter pylori negative', correct: false },
          { text: 'Helicobacter pylori positive', correct: true}
        ],
        image: 'q7_v1.png',
        version: 1
      },
      {
        text: 'Does this gastric mucosa have intestinal metaplasia?',
        choices: [
          { text: 'Yes', correct: true },
          { text: 'No', correct: false}
        ],
        image: 'q8_v1.png',
        version: 1
      },
      {
        text: 'This gastric body mucosa is most likely:',
        choices: [
          { text: 'Helicobacter pylori negative', correct: true },
          { text: 'Helicobacter pylori positive', correct: false}
        ],
        image: 'q9_v1.png',
        version: 1
      },
      {
        text: 'This gastric antral mucosa is most likely:',
        choices: [
          { text: 'Helicobacter pylori negative', correct: true },
          { text: 'Helicobacter pylori positive', correct: false}
        ],
        image: 'q10_v1.png',
        version: 1
      },{
        text: 'This gastric antral mucosa is most likely: ',
        choices: [
          { text: 'Helicobacter pylori negative', correct: false },
          { text: 'Helicobacter pylori positive', correct: true}
        ],
        image: 'q11_v1.png',
        version: 1
      },
      {
        text: 'Does this gastric mucosa have intestinal metaplasia?',
        choices: [
          { text: 'Yes', correct: false },
          { text: 'No', correct: true}
        ],
        image: 'q12_v1.png',
        version: 1
      },
      {
        text: 'This gastric antral mucosa is most likely: ',
        choices: [
          { text: 'Helicobacter pylori negative', correct: true },
          { text: 'Helicobacter pylori positive', correct: false}
        ],
        image: 'q13_v1.png',
        version: 1
      },
      {
        text: 'This gastric body mucosa is most likely: ',
        choices: [
          { text: 'Helicobacter pylori negative', correct: false },
          { text: 'Helicobacter pylori positive', correct: true}
        ],
        image: 'q14_v1.png',
        version: 1
      },
      {
        text: 'This gastric antral mucosa is most likely: ',
        choices: [
          { text: 'Helicobacter pylori negative', correct: true },
          { text: 'Helicobacter pylori positive', correct: false}
        ],
        image: 'q15_v1.png',
        version: 1
      },
      {
        text: 'Does this gastric mucosa have intestinal metaplasia?',
        choices: [
          { text: 'Yes', correct: true },
          { text: 'No', correct: false}
        ],
        image: 'q16_v1.png',
        version: 1
      },
      {
        text: 'Does this gastric mucosa have intestinal metaplasia?',
        choices: [
          { text: 'Yes', correct: false },
          { text: 'No', correct: true}
        ],
        image: 'q17_v1.png',
        version: 1
      },
      {
        text: 'This gastric body mucosa is most likely:',
        choices: [
          { text: 'Helicobacter pylori negative', correct: true },
          { text: 'Helicobacter pylori positive', correct: false}
        ],
        image: 'q18_v1.png',
        version: 1
      },
      {
        text: 'This gastric body mucosa is most likely: ',
        choices: [
          { text: 'Helicobacter pylori negative', correct: true },
          { text: 'Helicobacter pylori positive', correct: false}
        ],
        image: 'q19_v1.png',
        version: 1
      },
      {
        text: 'This gastric body mucosa is most likely:',
        choices: [
          { text: 'Helicobacter pylori negative', correct: true },
          { text: 'Helicobacter pylori positive', correct: false}
        ],
        image: 'q20_v1.png',
        version: 1
      },
      {
        text: 'This gastric antral mucosa is most likely:',
        choices: [
          { text: 'Helicobacter pylori negative', correct: true },
          { text: 'Helicobacter pylori positive', correct: false}
        ],
        image: 'q21_v1.png',
        version: 1
      },
      {
        text: 'This gastric body mucosa is most likely:',
        choices: [
          { text: 'Helicobacter pylori negative', correct: true },
          { text: 'Helicobacter pylori positive', correct: false}
        ],
        image: 'q22_v1.png',
        version: 1
      },
      {
        text: 'This gastric body mucosa is most likely:',
        choices: [
          { text: 'Helicobacter pylori negative', correct: false },
          { text: 'Helicobacter pylori positive', correct: true}
        ],
        image: 'q23_v1.png',
        version: 1
      },
      {
        text: 'Does this gastric mucosa have intestinal metaplasia?',
        choices: [
          { text: 'Yes', correct: false },
          { text: 'No', correct: true}
        ],
        image: 'q24_v1.png',
        version: 1
      },
      {
        text: 'This gastric body mucosa is most likely: ',
        choices: [
          { text: 'Helicobacter pylori negative', correct: false },
          { text: 'Helicobacter pylori positive', correct: true}
        ],
        image: 'q25_v1.png',
        version: 1
      },
      {
        text: 'This gastric body mucosa is most likely:',
        choices: [
          { text: 'Helicobacter pylori negative', correct: true },
          { text: 'Helicobacter pylori positive', correct: false}
        ],
        image: 'q26_v1.png',
        version: 1
      },
      {
        text: 'This gastric body mucosa is most likely: ',
        choices: [
          { text: 'Helicobacter pylori negative', correct: false },
          { text: 'Helicobacter pylori positive', correct: true}
        ],
        image: 'q27_v1.png',
        version: 1
      },
      {
        text: 'Does this gastric mucosa have intestinal metaplasia?',
        choices: [
          { text: 'Yes', correct: false },
          { text: 'No', correct: true}
        ],
        image: 'q28_v1.png',
        version: 1
      },
      {
        text: 'This gastric antral mucosa is most likely:',
        choices: [
          { text: 'Helicobacter pylori negative', correct: false },
          { text: 'Helicobacter pylori positive', correct: true}
        ],
        image: 'q29_v1.png',
        version: 1
      },
      {
        text: 'Does this gastric mucosa have intestinal metaplasia?',
        choices: [
          { text: 'Yes', correct: true },
          { text: 'No', correct: false}
        ],
        image: 'q30_v1.png',
        version: 1
      },
      {
        text: 'This gastric antral mucosa is most likely:',
        choices: [
          { text: 'Helicobacter pylori negative', correct: true },
          { text: 'Helicobacter pylori positive', correct: false}
        ],
        image: 'q31_v1.png',
        version: 1
      },
      {
        text: 'Does this gastric mucosa have intestinal metaplasia?',
        choices: [
          { text: 'Yes', correct: true },
          { text: 'No', correct: false}
        ],
        image: 'q32_v1.png',
        version: 1
      },
      {
        text: 'This gastric body mucosa is most likely: ',
        choices: [
          { text: 'Helicobacter pylori negative', correct: false },
          { text: 'Helicobacter pylori positive', correct: true}
        ],
        image: 'q33_v1.png',
        version: 1
      },
      {
        text: 'Does this gastric mucosa have intestinal metaplasia?',
        choices: [
          { text: 'Yes', correct: true },
          { text: 'No', correct: false}
        ],
        image: 'q34_v1.png',
        version: 1
      },
      {
        text: 'Does this gastric mucosa have intestinal metaplasia?',
        choices: [
          { text: 'Yes', correct: true },
          { text: 'No', correct: false}
        ],
        image: 'q35_v1.png',
        version: 1
      },
      {
        text: 'This gastric antral mucosa is most likely: ',
        choices: [
          { text: 'Helicobacter pylori negative', correct: false },
          { text: 'Helicobacter pylori positive', correct: true}
        ],
        image: 'q36_v1.png',
        version: 1
      },
      {
        text: 'Does this gastric mucosa have intestinal metaplasia? ',
        choices: [
          { text: 'Yes', correct: false },
          { text: 'No', correct: true}
        ],
        image: 'q37_v1.png',
        version: 1
      },
      {
        text: 'Does this gastric mucosa have intestinal metaplasia? ',
        choices: [
          { text: 'Yes', correct: true },
          { text: 'No', correct: false}
        ],
        image: 'q38_v1.png',
        version: 1
      },
      {
        text: 'This gastric body mucosa is most likely:',
        choices: [
          { text: 'Helicobacter pylori negative', correct: true },
          { text: 'Helicobacter pylori positive', correct: false}
        ],
        image: 'q39_v1.png',
        version: 1
      },
      {
        text: 'Does this gastric mucosa have intestinal metaplasia?',
        choices: [
          { text: 'Yes', correct: false },
          { text: 'No', correct: true}
        ],
        image: 'q40_v1.png',
        version: 1
      },
      {
        text: 'This gastric antral mucosa is most likely:',
        choices: [
          { text: 'Helicobacter pylori negative', correct: false },
          { text: 'Helicobacter pylori positive', correct: true}
        ],
        image: 'q41_v1.png',
        version: 1
      },
      {
        text: 'This gastric body mucosa is most likely:',
        choices: [
          { text: 'Helicobacter pylori negative', correct: true },
          { text: 'Helicobacter pylori positive', correct: false}
        ],
        image: 'q42_v1.png',
        version: 1
      },
      {
        text: 'This gastric antral mucosa is most likely:',
        choices: [
          { text: 'Helicobacter pylori negative', correct: false },
          { text: 'Helicobacter pylori positive', correct: true}
        ],
        image: 'q43_v1.png',
        version: 1
      },
      {
        text: 'This gastric antral mucosa is most likely:',
        choices: [
          { text: 'Helicobacter pylori negative', correct: true },
          { text: 'Helicobacter pylori positive', correct: false}
        ],
        image: 'q44_v1.png',
        version: 1
      },
      {
        text: 'This gastric antral mucosa is most likely:',
        choices: [
          { text: 'Helicobacter pylori negative', correct: true },
          { text: 'Helicobacter pylori positive', correct: false}
        ],
        image: 'q45_v1.png',
        version: 1
      }
    ]
    questions.each do |question|
      q = Question.create(text: question[:text], image: question[:image], version: 1)
      question[:choices].each do |choice|
        q.choices.create(text: choice[:text], correct: choice[:correct])
      end
    end
  end
end
