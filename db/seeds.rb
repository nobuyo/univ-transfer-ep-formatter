# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |n|
  Episode.create(
        name: "田中#{n}助",
        dept: "電子制御工学科",
        activities: "バスケ",
        destination: "国立#{n}大学",
        record_1st: n,
        record_2nd: n,
        record_3rd: n,
        record_4th: n,
        advise: "まあ、#{n}時間で足りる",
        comment: "コメントコメント",
        univs_attributes: [
          name: "あああ大学",
          dept: "いい学部",
          admission_method: "学力",
          result: "合格",
          exam_info: "試験お情報",
          interview_info: "面接の情報",
          subjects_attributes: [
            title: "試験科目#{n}",
            study_method: "こんな感じ",
            books_attributes: [
              title: "いい本#{n}",
              press: "#{n}プレス",
              comment: "いい感じ"
            ]
          ]
        ],
        timelineitems_attributes: [
          grade: "#{n}",
          period: "#{n}~#{n}",
          studying_time: "適当",
          content: "鼻をほじる"
        ])
end